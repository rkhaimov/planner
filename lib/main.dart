import 'package:flutter/material.dart';
import 'package:planner/createApp.dart';
import 'package:planner/externals/externals.dart';
import 'package:planner/externals/index.dart';
import 'package:planner/externals/types.dart';

// flutter run ./lib/main.dart --dart-define=MODE="PRODUCTION"
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Root(
      externals: await _verifyConsistency(createOriginExternals()),
      ui: const UI(),
    ),
  );
}

// TODO: Integrity vs consistency
// TODO: Test it
final _verifyConsistency = (OriginExternals externals) async {
  final se = await externals.getAllSourcedEvents();
  final rules = [_allIdsAreDifferentRule];

  if (rules.every((rule) => rule.satisfies(se))) {
    return externals;
  }

  await externals.updateDataConsistency(
      rules.fold(se, (events, it) => it.transform(events)).toList());

  return externals;
};

// TODO: Impl consistency backups
typedef Rule = ({
  bool Function(Iterable<SourcedEvent> se) satisfies,
  Iterable<SourcedEvent> Function(Iterable<SourcedEvent> se) transform,
});

final Rule _allIdsAreDifferentRule = (
  satisfies: (se) =>
      se.whereType<CreatedSE>().length ==
      se.whereType<CreatedSE>().map((it) => it.parent).toSet().length,
// TODO: Some parts of data is being lost
  transform: (se) {
    var id = ID.zero();

    return se.map((it) {
      switch (it) {
        case CreatedSE():
          final updated = it.copyWith(parent: id);

          id = id.after(id);

          return updated;
        case _:
          return it;
      }
    });
  },
);
