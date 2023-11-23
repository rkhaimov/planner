import 'package:planner/externals/types.dart';
import 'package:planner/reusables/cq/types.dart';

// TODO: Type strictly:
// 1. OriginExternals can not be used until consistency is verified
// 2. Consistency version should always be greater than existing when migrated
// 3. Greater consistency version should be assignable to lower one (more conditions are met)
class OriginExternals {
  final Future<Iterable<SourcedEvent>> Function() getAllSourcedEvents;
  final PushSourcedEvent pushSourcedEvent;
  final UpdateDataConsistency updateDataConsistency;

  OriginExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
    required this.updateDataConsistency,
  });
}

class ReactiveExternals {
  final Query<Iterable<SourcedEvent>> Function() getAllSourcedEvents;
  final PushSourcedEvent pushSourcedEvent;
  final UpdateDataConsistency updateDataConsistency;

  ReactiveExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
    required this.updateDataConsistency,
  });
}

typedef PushSourcedEvent = Future<void> Function(SourcedEvent event);
typedef UpdateDataConsistency = Future<void> Function(
    Iterable<SourcedEvent> events);
