import 'package:planner/externals/types.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/reusables/utils.dart';

// TODO: Unite with to do list view
Iterable<ToDoStruct> toToDoStruct(Iterable<SourcedEvent> events) {
  final thoughts =
      events.whereType<MarkedAsThoughtSE>().map((it) => it.parent).toSet();

  return events.where((event) => thoughts.contains(event.parent).not()).fold(
    <ID, ToDoStruct>{},
    (all, event) => switch (event) {
      CreatedSE() => _onCreated(all, event),
      TitleChangedSE() => _update(
          all,
          event,
          (curr) => curr.copyWith(title: event.title),
        ),
      DescriptionChangedSE() => _update(
          all,
          event,
          (curr) => curr.copyWith(description: event.description),
        ),
      CategoryChangedSE() => _update(
          all,
          event,
          (curr) {
            final category = event.category;

            final struct =
                category == null ? null : CategoryStruct.create(category);

            return curr.copyWith(category: struct);
          },
        ),
      MarkedAsInProgress() => _update(
          all,
          event,
          (curr) => curr.copyWith(status: ToDoStatus.IN_PROGRESS),
        ),
      MarkedAsDone() => _update(
          all,
          event,
          (curr) => curr.copyWith(status: ToDoStatus.DONE),
        ),
      MarkedAsToDo() => _update(
          all,
          event,
          (curr) => curr.copyWith(status: ToDoStatus.TO_DO),
        ),
      DeletedSE() => _onDeleted(all, event),
      MarkedAsThoughtSE() => all,
    },
  ).values;
}

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

Map<ID, ToDoStruct> _onDeleted(
  Map<ID, ToDoStruct> all,
  DeletedSE event,
) {
  require(
    all.containsKey(event.parent),
    'ToDo must be created before it is deleted',
  );

  return all..remove(event.parent);
}

Map<ID, ToDoStruct> _update(
  Map<ID, ToDoStruct> all,
  SourcedEvent event,
  ToDoStruct Function(ToDoStruct curr) update,
) {
  final todo = requireNotNull(
    all[event.parent],
    'ToDo must be created before it is updated',
  );

  all[event.parent] = update(todo);

  return all;
}
