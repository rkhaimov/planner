import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/category_struct.dart';
import 'package:planner/reusables/utils.dart';

Iterable<AggregateStruct> toAggregateStruct(Iterable<SourcedEvent> events) =>
    events.fold(
      <ID, AggregateStruct>{},
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
            (curr) => curr.copyWith(
              category: CategoryStruct.create(event.category),
            ),
          ),
        MarkedAsInProgress() => _update(
            all,
            event,
            (curr) => curr.copyWith(status: AggregateStatus.IN_PROGRESS),
          ),
        MarkedAsDone() => _update(
            all,
            event,
            (curr) => curr.copyWith(status: AggregateStatus.DONE),
          ),
        MarkedAsToDo() => _update(
            all,
            event,
            (curr) => curr.copyWith(status: AggregateStatus.TO_DO),
          ),
        DeletedSE() => _update(
            all,
            event,
            (curr) => curr.copyWith(deleted: true),
          ),
        MarkedAsThoughtSE() => _update(
            all,
            event,
            (curr) => curr.copyWith(thought: true),
          ),
        MarkedAsToDoSE() => _update(
            all,
            event,
            (curr) => curr.copyWith(thought: false),
          ),
      },
    ).values;

Map<ID, AggregateStruct> _onCreated(
  Map<ID, AggregateStruct> all,
  CreatedSE event,
) {
  require(
    all.containsKey(event.parent).not(),
    'Single aggregate can not be created more than once',
  );

  // TODO: Defaults should be deduplicated
  all[event.parent] = AggregateStruct(
    id: event.parent,
    deleted: false,
    thought: false,
  );

  return all;
}

Map<ID, AggregateStruct> _update(
  Map<ID, AggregateStruct> all,
  SourcedEvent event,
  AggregateStruct Function(AggregateStruct curr) update,
) {
  final todo = requireNotNull(
    all[event.parent],
    'Aggregate must be created before it is updated',
  );

  all[event.parent] = update(todo);

  return all;
}
