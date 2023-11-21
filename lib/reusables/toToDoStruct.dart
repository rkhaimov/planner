import 'package:planner/externals/types.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/reusables/utils.dart';

Iterable<ToDoStruct> toToDoStruct(Iterable<SourcedEvent> events) => events.fold(
      <ID, ToDoStruct>{},
      (all, event) => switch (event) {
        CreatedSE() => _onCreated(all, event),
        TitleChangedSE() => _onTitleChanged(all, event),
        DescriptionChangedSE() => _onDescriptionChanged(all, event),
        MarkedAsThoughtSE() => all,
        CategoryChangedSE() => all,
      },
    ).values;

Map<ID, ToDoStruct> _onCreated(
  Map<ID, ToDoStruct> all,
  CreatedSE event,
) {
  require(
    all.containsKey(event.parent).not(),
    'Single ToDo can not be created more than once',
  );

  all[event.parent] = ToDoStruct(id: event.parent);

  return all;
}

Map<ID, ToDoStruct> _onTitleChanged(
  Map<ID, ToDoStruct> all,
  TitleChangedSE event,
) {
  final todo = requireNotNull(
    all[event.parent],
    'ToDo must be created before it is updated',
  );

  todo.title = event.title;

  all[event.parent] = todo;

  return all;
}

Map<ID, ToDoStruct> _onDescriptionChanged(
  Map<ID, ToDoStruct> all,
  DescriptionChangedSE event,
) {
  final todo = requireNotNull(
    all[event.parent],
    'ToDo must be created before it is updated',
  );

  todo.description = event.description;

  all[event.parent] = todo;

  return all;
}
