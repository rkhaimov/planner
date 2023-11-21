import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner/storybook/story_foundations.dart';

final toDoStories = createGroup('ToDo', [
  createStory(
    title: 'NoEvents',
    act: (actor) => actor.tap(find.byIcon(Icons.business_center_outlined)),
  ),
]);
