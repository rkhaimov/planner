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
    title: 'ToDoActions',
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
        .screenshot('ToDoActions')
        .tap(find.text('Mark as in progress'))
        .screenshot('ToDoTabAfterInProgress')
        .tap(find.byIcon(Icons.run_circle_outlined))
        .screenshot('InProgressTab')
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать сортировку todo')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Реализовать сортировку todo'))
        .tap(find.text('Mark as done'))
        .screenshot('ToDoTabAfterDone')
        .tap(find.byIcon(Icons.check_circle_outline_outlined)),
  ),
  createStory(
    title: 'InProgressActions',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Проверить возможности EventSourcing')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as in progress'))
        .tap(find.byIcon(Icons.run_circle_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .screenshot('InProgressActions')
        .tap(find.text('Mark as to do'))
        .screenshot('InProgressTabAfterToDo')
        .tap(find.byIcon(Icons.business_center_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as in progress'))
        .tap(find.byIcon(Icons.run_circle_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as done'))
        .screenshot('InProgressTabAfterDone')
        .tap(find.byIcon(Icons.check_circle_outline_outlined)),
  ),
  createStory(
    title: 'DoneActions',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Проверить возможности EventSourcing')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as done'))
        .tap(find.byIcon(Icons.check_circle_outline_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .screenshot('DoneActions')
        .tap(find.text('Mark as to do'))
        .screenshot('DoneTabAfterToDo')
        .tap(find.byIcon(Icons.business_center_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as done'))
        .tap(find.byIcon(Icons.check_circle_outline_outlined))
        .tap(find.text('Проверить возможности EventSourcing'))
        .tap(find.text('Mark as in progress'))
        .screenshot('DoneTabAfterInProgress')
        .tap(find.byIcon(Icons.run_circle_outlined)),
  ),
  createStory(
    title: 'ToDoView',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Программирование')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Реализовать тесты'))
        .tap(find.text('Open info')),
  ),
  createStory(
    title: 'ToDoEdit',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Программирование')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Реализовать тесты'))
        .tap(find.text('Open info'))
        .tap(find.byIcon(Icons.edit))
        .enterText(find.text('Category'), '')
        .enterText(find.text('Description'), 'С измененным описанием')
        .screenshot('EditedForm')
        .tap(find.byIcon(Icons.check))
        .screenshot('ToDoView')
        .tap(find.byIcon(Icons.arrow_back)),
  ),
  createStory(
    title: 'ToDoRemove',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Реализовать тесты')
        .tap(find.byIcon(Icons.add))
        .tap(find.text('Реализовать тесты'))
        .tap(find.text('Remove'))
        .screenshot('RemoveConfirmation')
        .tap(find.text('NO'))
        .screenshot('RemovalDenied')
        .tap(find.text('Реализовать тесты'))
        .tap(find.text('Remove'))
        .tap(find.text('YES')),
  ),
  createStory(
    title: 'CreateThought',
    act: (actor) => actor
        .tap(find.byIcon(Icons.add))
        .enterText(find.text('Title'), 'Обдумать план')
        .enterText(find.text('Description'), 'С нужным описанием')
        .enterText(find.text('Category'), 'Здоровье')
        .tap(find.text('Thought'))
        .tap(find.byIcon(Icons.add))
        .screenshot('ToDoTab')
        .tap(find.byIcon(Icons.psychology_outlined)),
  )
]);
