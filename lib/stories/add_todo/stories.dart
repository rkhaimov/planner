import 'package:flutter/material.dart';
import 'package:planner/externals/mock.dart';
import 'package:planner/storybook/story_foundations.dart';
import 'package:flutter_test/flutter_test.dart';

final addToDoStories = createGroup('AddToDo', [
  createStory(
    title: 'NoEvents',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Заголовок'), 'Реализовать тесты')
        .enterText(find.text('Описание'), 'С нужным описанием')
        .tap(find.byIcon(Icons.add)),
  ),
  createGroup('InitialToDo', [
    createStory(
      title: 'PartiallyFilled',
      arrange: (externals) => externals.withInitialToDo(),
      act: (actor) => actor
          .tap(find.byIcon(Icons.add))
          .enterText(find.text('Заголовок'), 'Реализовать тесты')
          .tap(find.byIcon(Icons.add)),
    ),
    createStory(
      title: 'NotFilledAtAll',
      arrange: (externals) => externals.withInitialToDo(),
      act: (actor) => actor
          .tap(find.byIcon(Icons.add))
          .enterText(find.text('Заголовок'), 'Реализовать тесты')
          .tap(find.byIcon(Icons.add)),
    ),
  ]),
]);
