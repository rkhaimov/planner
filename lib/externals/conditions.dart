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

// TODO: Some parts of data is being lost during transform
final Rule _allIdsAreDifferentRule = (
  satisfies: (se) =>
      se.whereType<CreatedSE>().length ==
      se.whereType<CreatedSE>().map((it) => it.parent).toSet().length,
  transform: (se) => se.fold(
        (ID.initial(), <SourcedEvent>[]),
        (all, curr) => switch (curr) {
          CreatedSE() => (
              all.$1.next(),
              [...all.$2, curr.copyWith(parent: all.$1)],
            ),
          _ => (
              all.$1,
              [...all.$2, curr],
            ),
        },
      ).$2,
);

typedef Rule = ({
  bool Function(Iterable<SourcedEvent> se) satisfies,
  Iterable<SourcedEvent> Function(Iterable<SourcedEvent> se) transform,
});
