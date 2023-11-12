import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

import '../tester/index.dart';
import '../types.dart';

final runStory = (
  Future<Uint8List> Function() screenshot,
  ActiveStory active,
) async {
  try {
    final act = createAct(screenshot);

    await act.controller.settle();

    final screenshots = await active.story.act(act.builder).act();

    await act.controller.settle();

    return Success(
      intermediateScreenshots: screenshots,
      lastScreenshot: await screenshot(),
      interactionsPassed:
          active.recorder.toMatchInteractions(active.story.commands),
    );
  } catch (error) {
    print('${FlutterErrorDetails(exception: error)}');

    return Failure();
  }
};

sealed class StoryResult {}

class Success extends StoryResult {
  final Iterable<Screenshot> intermediateScreenshots;
  final Uint8List lastScreenshot;
  final bool interactionsPassed;

  Success({
    required this.intermediateScreenshots,
    required this.lastScreenshot,
    required this.interactionsPassed,
  });
}

class Failure extends StoryResult {}
