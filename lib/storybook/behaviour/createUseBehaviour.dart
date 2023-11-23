import 'dart:developer';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/mock.dart';
import 'package:planner/reusables/hooks.dart';
import 'package:planner/storybook/behaviour/createPersistenceSync.dart';
import 'package:planner/storybook/behaviour/runStory.dart';
import 'package:planner/storybook/recorder.dart';
import 'package:planner/storybook/tester/screenshot.dart';

import '../story_foundations.dart';
import '../types.dart';

final createUseBehaviour = (StoriesStruct stories) async {
  final sync = await createPersistenceSync(stories.all);
  final initial = sync.active ?? stories.fallback;

  return () {
    final active = useState(toActiveStory(initial));

    useStreamEffect(() async* {
      // TODO: Implement cancellation
      await sync.setActive(active.value.story);
      await runStory(createEmptyScreenshot, active.value);
    }, [active.value]);

    return (
      active: active.value,
      setStory: (Story next) => active.value = toActiveStory(next)
    );
  };
};
