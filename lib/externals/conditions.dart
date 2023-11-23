import 'package:planner/externals/types.dart';

// TODO: Integrity vs consistency
// TODO: Test it
// TODO: Impl consistency backups
final withIntegrityAndConsistencyVerified = (Iterable<SourcedEvent> all) {
  final rules = [_allIdsAreDifferentRule];

  if (rules.every((rule) => rule.satisfies(all))) {
    return all;
  }

  return rules.fold(all, (events, it) => it.transform(events)).toList();
};

final Rule _allIdsAreDifferentRule = (
  satisfies: (se) =>
      se.whereType<CreatedSE>().length ==
      se.whereType<CreatedSE>().map((it) => it.parent).toSet().length,
  transform: (se) {
    // TODO: Some parts of data is being lost
    var id = ID.zero();

    return se.map((it) {
      switch (it) {
        case CreatedSE():
          final updated = it.copyWith(parent: id);

          id = ID.after(id);

          return updated;
        case _:
          return it;
      }
    });
  },
);

typedef Rule = ({
  bool Function(Iterable<SourcedEvent> se) satisfies,
  Iterable<SourcedEvent> Function(Iterable<SourcedEvent> se) transform,
});
