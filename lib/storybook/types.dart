import 'dart:typed_data';

import '../externals/externals.dart';
import 'recorder.dart';
import 'story_foundations.dart';

typedef ActiveStory = ({
  Story story,
  OriginExternals externals,
  Recorder recorder
});

typedef Screenshot = ({String? label, Uint8List content});

typedef Stories = ({
  Story fallback,
  Iterable<Node> all,
});
