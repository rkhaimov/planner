import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:planner/createApp.dart';
import 'package:planner/reusables/either.dart';
import 'package:planner/reusables/safe_subject_builder.dart';
import 'package:planner/reusables/utils.dart';
import 'package:planner/storybook/behaviour/runStory.dart';
import 'package:planner/storybook/behaviour/utils.dart';
import 'package:planner/storybook/stories.dart';
import 'package:planner/storybook/tester/screenshot.dart';
import 'package:planner/storybook/types.dart';
import 'package:rxdart/rxdart.dart';

import 'types.dart';

void main() async {
  final onFinish = Completer<Iterable<StoryRunResult>>();

  enableFlutterDriverExtension(
    enableTextEntryEmulation: false,
    handler: (message) async {
      final results = await onFinish.future;

      // TODO: Simplify
      results
          .where((it) => it.result
              .fold((_) => true, (result) => result.interactionsPassed.not()))
          .map(
            (it) => it.result.fold(
              (_) =>
                  '\x1B[31m${it.story} failed entirely. Please, verify its behaviour\x1B[0m',
              (result) =>
                  '\x1B[31m${it.story} interactions failed. Please, verify its behaviour\x1B[0m',
            ),
          )
          .forEach(print);

      return jsonEncode(
        TestingResults(
          screenshots: results
              .expand(
                (it) => it.result.fold<Iterable<Screenshot>>(
                  (_) => [],
                  (result) => _toScreenshots(it.story, result),
                ),
              )
              .toList(),
        ),
      );
    },
  );

  final stories$ = _runAllStories(stories, onFinish.complete)
      .shareValueSeeded(toActiveStory(stories.fallback));

  runApp(
    SafeSubjectBuilder(
      subject: stories$,
      onData: (context, active) => Root(
        key: ValueKey(active.story),
        externals: active.externals,
        ui: const UI(),
      ),
    ),
  );
}

typedef StoryRunResult = ({
  String story,
  Either<void, SuccessStoryResultStruct> result
});

final _runAllStories = (
  StoriesStruct stories,
  void Function(Iterable<StoryRunResult> results) onFinish,
) async* {
  final results = <StoryRunResult>[];

  for (final story in createPathToStoryMap(stories.all).entries) {
    final active = toActiveStory(story.value);

    print('\x1B[32m${story.key} IS RUNNING\x1B[0m');

    yield active;

    results.add((
      story: story.key,
      result: await runStory(captureScreenshot, active),
    ));
  }

  onFinish(results);
};

final _toScreenshots = (String story, SuccessStoryResultStruct result) => [
      ...result.intermediateScreenshots.toList().asMap().entries.map(
            (it) => Screenshot(
              name: '${story}_${it.value.label}',
              bytes: it.value.content,
            ),
          ),
      Screenshot(name: story, bytes: result.lastScreenshot),
    ];
