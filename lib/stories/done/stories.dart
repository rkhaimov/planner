import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner/storybook/story_foundations.dart';

final doneStories = createGroup('Done', [
  createStory(
    title: 'NoEvents',
    act: (actor) => actor.tap(find.byIcon(Icons.check_circle_outline_outlined)),
  ),
]);
