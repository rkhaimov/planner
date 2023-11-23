import 'package:planner/externals/types.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/reusables/utils.dart';

// TODO: Unite with to do list view
Iterable<ThoughtStruct> toThoughtStruct(Iterable<SourcedEvent> events) {
  final thoughts =
      events.whereType<MarkedAsThoughtSE>().map((it) => it.parent).toSet();

  return events.where((event) => thoughts.contains(event.parent)).fold(
      <ID, ThoughtStruct>{},
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
            MarkedAsThoughtSE() => all,
            MarkedAsInProgress() => all,
            MarkedAsDone() => all,
            MarkedAsToDo() => all,
          }).values;
}

Map<ID, ThoughtStruct> _onCreated(
  Map<ID, ThoughtStruct> all,
  CreatedSE event,
) {
  require(
    all.containsKey(event.parent).not(),
    'Single ToDo can not be created more than once',
  );

  all[event.parent] = ThoughtStruct(id: event.parent);

  return all;
}

Map<ID, ThoughtStruct> _update(
  Map<ID, ThoughtStruct> all,
  SourcedEvent event,
  ThoughtStruct Function(ThoughtStruct curr) update,
) {
  final todo = requireNotNull(
    all[event.parent],
    'ToDo must be created before it is updated',
  );

  all[event.parent] = update(todo);

  return all;
}
