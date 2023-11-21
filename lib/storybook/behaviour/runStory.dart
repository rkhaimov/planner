import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:planner/reusables/either.dart';

import '../tester/index.dart';
import '../types.dart';

Future<Either<void, SuccessStoryResultStruct>> runStory(
  Future<Uint8List> Function() screenshot,
  ActiveStoryStruct active,
) async {
  try {
    final act = createAct(screenshot);

    await act.controller.settle();

    final screenshots = await active.story.act(act.builder).act();

    await act.controller.settle();

    final success = (
      intermediateScreenshots: screenshots,
      lastScreenshot: await screenshot(),
      interactionsPassed:
          active.recorder.toMatchInteractions(active.story.commands),
    );

    return Either.right(success);
  } catch (error) {
    print('${FlutterErrorDetails(exception: error)}');

    return Either.left(null);
  }
}

typedef SuccessStoryResultStruct = ({
  Iterable<ScreenshotStruct> intermediateScreenshots,
  Uint8List lastScreenshot,
  bool interactionsPassed,
});
