import 'package:planner/reusables/cq/query_utils.dart';
import 'package:planner/reusables/cq/types.dart';

import 'externals.dart';

final toReactiveExternals = (OriginExternals origin) {
  final se = createSource();

  return ReactiveExternals(
    getAllSourcedEvents: () =>
        Query(request: origin.getAllSourcedEvents, source: se),
    pushSourcedEvent: (event) => se.updateAfter(origin.pushSourcedEvent(event)),
    updateDataConsistency: (events) =>
        se.updateAfter(origin.updateDataConsistency(events)),
  );
};
