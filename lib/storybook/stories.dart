import 'package:planner/stories/add_todo/stories.dart';
import 'package:planner/stories/done/stories.dart';
import 'package:planner/stories/in_progress/stories.dart';
import 'package:planner/stories/to_do/stories.dart';
import 'package:planner/storybook/story_foundations.dart';
import 'package:planner/storybook/types.dart';

final fallback = createStory(title: 'Fallback');

final StoriesStruct stories = (
  fallback: fallback,
  all: [fallback, inProgressStories, toDoStories, doneStories, addToDoStories],
);
