import 'package:planner/externals/mock.dart';
import 'package:planner/storybook/story_foundations.dart';

final inProgressStories = createGroup('InProgress', [
  createStory(title: 'NoEvents'),
  createStory(
    title: 'InitialToDo',
    arrange: (externals) => externals.withInitialToDo(),
  ),
]);
