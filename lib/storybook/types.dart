import 'dart:typed_data';

import 'package:planner/externals/mock.dart';

import '../externals/externals.dart';
import 'recorder.dart';
import 'story_foundations.dart';

typedef ActiveStoryStruct = ({
  Story story,
  OriginExternals externals,
  Recorder recorder
});

ActiveStoryStruct toActiveStory(Story story) {
  final recorder = createRecorder();

  return (
    story: story,
    externals: createMockOriginExternals().spy(recorder),
    recorder: recorder,
  );
}

typedef ScreenshotStruct = ({String label, Uint8List content});

typedef StoriesStruct = ({
  Story fallback,
  Iterable<Node> all,
});
