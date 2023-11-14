import 'package:planner/externals/externals.dart';

final originExternals = OriginExternals(
  getAllSourcedEvents: () async => [],
  pushSourcedEvent: (_, __) async {},
  createSourcedEvent: (_, __) async => throw Error(),
);
