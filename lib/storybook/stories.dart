import 'package:planner/stories/stories.dart';
import 'package:planner/storybook/story_foundations.dart';
import 'package:planner/storybook/types.dart';

final entry = createStory(title: 'InitialEntry');

final StoriesStruct stories = (
  fallback: entry,
  all: [generalStories],
);
