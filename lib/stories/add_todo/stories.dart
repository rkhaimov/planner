import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner/storybook/story_foundations.dart';

final addToDoStories = createGroup('AddToDo', [
  createStory(
    title: 'NoEvents',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Программирование')
        .tap(find.text('Thought'))
        .tap(find.byIcon(Icons.add)),
    commands: [
      'pushSourcedEvent: [{"parent":0,"at":"2023-03-01T00:00:00.000","runtimeType":"CreatedSE"}]',
      'pushSourcedEvent: [{"parent":0,"at":"2023-03-01T00:00:00.000","title":"Реализовать тесты","runtimeType":"TitleChangedSE"}]',
      'pushSourcedEvent: [{"parent":0,"at":"2023-03-01T00:00:00.000","description":"С нужным описанием","runtimeType":"DescriptionChangedSE"}]',
      'pushSourcedEvent: [{"parent":0,"at":"2023-03-01T00:00:00.000","category":"Программирование","runtimeType":"CategoryChangedSE"}]',
      'pushSourcedEvent: [{"parent":0,"at":"2023-03-01T00:00:00.000","runtimeType":"MarkedAsThoughtSE"}]',
    ],
  ),
  createStory(
    title: 'PartiallyFilled',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .tap(find.byIcon(Icons.add)),
  ),
  createStory(
    title: 'NotFilledAtAll',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .tap(find.byIcon(Icons.add)),
  ),
]);
