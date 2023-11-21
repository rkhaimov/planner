import 'dart:typed_data';

import '../externals/externals.dart';
import 'recorder.dart';
import 'story_foundations.dart';

typedef ActiveStoryStruct = ({
  Story story,
  OriginExternals externals,
  Recorder recorder
});

typedef ScreenshotStruct = ({String? label, Uint8List content});

typedef StoriesStruct = ({
  Story fallback,
  Iterable<Node> all,
});
