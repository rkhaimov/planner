import 'package:planner/externals/externals.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/types.dart';

final createMockOriginExternals = () {
  final pushed = <SourcedEvent>[];

  return OriginExternals(
    getAllSourcedEvents: () async => pushed,
    pushSourcedEvent: (event) async => pushed.add(event),
  );
};

extension Mock on OriginExternals {
  // TODO: Should be simplified
  withInitialToDo() => withSourcedEventsHaving([
        CreatedSE(ID(0), _now()),
        TitleChangedSE(ID(0), _now(), 'Реализовать планнер'),
        DescriptionChangedSE(ID(0), _now(), 'Нужно скорее закончить с этим'),
        StatusChangedSE(ID(0), _now(), ToDoStatus.IN_PROGRESS),
        CreatedSE(ID(1), _now()),
        TitleChangedSE(ID(1), _now(), 'Протестировать решение'),
        StatusChangedSE(ID(1), _now(), ToDoStatus.IN_PROGRESS),
        CreatedSE(ID(2), _now()),
        DescriptionChangedSE(
          ID(2),
          _now(),
          'Чем скорее это будет готово, тем лучше',
        ),
        StatusChangedSE(ID(2), _now(), ToDoStatus.IN_PROGRESS),
        CreatedSE(ID(3), _now()),
        TitleChangedSE(ID(3), _now(), 'Упростить решение'),
        DescriptionChangedSE(ID(3), _now(), 'Тесты должны быть проще'),
        StatusChangedSE(ID(3), _now(), ToDoStatus.TO_DO),
        CreatedSE(ID(4), _now()),
        TitleChangedSE(ID(4), _now(), 'Стоит ли так заморачиваться'),
        StatusChangedSE(ID(4), _now(), ToDoStatus.TO_DO),
        CreatedSE(ID(5), _now()),
        CreatedSE(ID(6), _now()),
        TitleChangedSE(ID(6), _now(), 'Наметить планы'),
        DescriptionChangedSE(ID(6), _now(), 'Нужно же с чего то начинать'),
        StatusChangedSE(ID(6), _now(), ToDoStatus.DONE),
        CreatedSE(ID(7), _now()),
        TitleChangedSE(ID(7), _now(), 'Начать работу'),
        StatusChangedSE(ID(7), _now(), ToDoStatus.DONE),
        CreatedSE(ID(8), _now()),
        DescriptionChangedSE(ID(8), _now(), 'Написать первичную структуру'),
        StatusChangedSE(ID(8), _now(), ToDoStatus.DONE),
      ]);

  withSourcedEventsHaving(Iterable<SourcedEvent> events) => OriginExternals(
        getAllSourcedEvents: () async => events,
        pushSourcedEvent: pushSourcedEvent,
      );

  withPushingEmulated() {}
}

final _now = () => DateTime(2023, 3, 1);
