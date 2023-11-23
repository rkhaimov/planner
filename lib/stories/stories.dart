import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner/storybook/story_foundations.dart';

// TODO: Sorting
final generalStories = createGroup('GeneralStories', [
  createStory(
    title: 'CategoryGrouping',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Программирование')
        .screenshot('AddToDoFilled')
        .tap(find.byIcon(Icons.add))
        .screenshot('OneCategoryElement')
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Проверить возможности EventSourcing')
        .enterText(find.text('Category'), 'программирование ')
        .tap(find.byIcon(Icons.add))
        .screenshot('MultipleCategoryElement')
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать сортировку todo')
        .tap(find.byIcon(Icons.add))
        .screenshot('NoCategoryElement')
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Category'), 'Книги')
        .tap(find.byIcon(Icons.add)),
  ),
  createStory(
    title: 'ToInProgressAction',
    // TODO: Implement events cashing for faster tests-time development
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Программирование')
        .tap(find.byIcon(Icons.add))
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Проверить возможности EventSourcing')
        .enterText(find.text('Category'), 'программирование ')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Реализовать тесты'))
        .tap(find.text('Mark as in progress'))
        .screenshot('ToDoTab')
        .tap(find.byIcon(Icons.run_circle_outlined))
        .screenshot('InProgressTab')
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать сортировку todo')
        .tap(find.byIcon(Icons.add)),
  ),
]);
