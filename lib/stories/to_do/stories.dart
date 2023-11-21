import 'package:flutter/material.dart';
import 'package:planner/externals/mock.dart';
import 'package:planner/storybook/story_foundations.dart';
import 'package:flutter_test/flutter_test.dart';

final toDoStories = createGroup('ToDo', [
  createStory(
    title: 'NoEvents',
    act: (actor) => actor.tap(find.byIcon(Icons.business_center_outlined)),
  ),
  createStory(
    title: 'InitialToDo',
    arrange: (externals) => externals.withInitialToDo(),
    act: (actor) => actor.tap(find.byIcon(Icons.business_center_outlined)),
  ),
]);
