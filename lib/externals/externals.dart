import 'package:planner/externals/types.dart';
import 'package:planner/reusables/cq/types.dart';

class OriginExternals {
  final Future<Iterable<SourcedEvent>> Function() getAllSourcedEvents;
  final PushSourcedEvent pushSourcedEvent;

  OriginExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
  });
}

class ReactiveExternals {
  final Query<Iterable<SourcedEvent>> Function() getAllSourcedEvents;
  final PushSourcedEvent pushSourcedEvent;

  ReactiveExternals({
    required this.getAllSourcedEvents,
    required this.pushSourcedEvent,
  });
}

typedef PushSourcedEvent = Future<void> Function(SourcedEvent event);
