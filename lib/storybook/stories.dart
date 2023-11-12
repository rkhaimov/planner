import 'package:planner/storybook/story_foundations.dart';
import 'package:planner/storybook/types.dart';

final fallback = createStory(title: 'Hello');

final Stories stories = (
  fallback: fallback,
  all: [fallback],
);
