import 'package:planner/externals/types.dart';
import 'package:planner/reusables/cq/query_utils.dart';
import 'package:planner/reusables/cq/types.dart';

final toReactiveExternals = (OriginExternals origin) {
  final se = createSource();

  return ReactiveExternals(
    getAllSourcedEvents: () =>
        Query(request: origin.getAllSourcedEvents, source: se),
    pushSourcedEvent: (id, event) =>
        se.updateAfter(origin.pushSourcedEvent(id, event)),
    createSourcedEvent: (initial, category) =>
        se.updateAfter(origin.createSourcedEvent(initial, category)),
  );
};

class OriginExternals {
  final Future<Iterable<ToDoSourcedEvent>> Function() getAllSourcedEvents;
  final CreateSourcedEvent createSourcedEvent;
  final PushSourcedEvent pushSourcedEvent;

  OriginExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
    required this.createSourcedEvent,
  });
}

class ReactiveExternals {
  final Query<Iterable<ToDoSourcedEvent>> Function() getAllSourcedEvents;
  final CreateSourcedEvent createSourcedEvent;
  final PushSourcedEvent pushSourcedEvent;

  ReactiveExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
    required this.createSourcedEvent,
  });
}

typedef CreateSourcedEvent = Future<ToDoSourcedEventAggregate> Function(
  ToDoInitialSourced initial,
  ToDoCategoryChangedSE category,
);

typedef PushSourcedEvent = Future<void> Function(
  ToDoID id,
  ToDoSourcedEvent event,
);
