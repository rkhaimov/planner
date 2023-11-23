import 'dart:convert';

import 'package:planner/externals/conditions.dart';
import 'package:planner/externals/externals.dart';
import 'package:planner/externals/structures.dart';
import 'package:planner/externals/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

final createOriginExternals = () async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString(
    'events',
    jsonEncode(
      withIntegrityAndConsistencyVerified(
        withStructureVerified(all: prefs.getString('events') ?? '[]'),
      ),
    ),
  );

  final getAllSourcedEvents = () async {
    final json = prefs.getString('events') ?? '[]';

    return List<SourcedEvent>.from(
      jsonDecode(json).map((it) => SourcedEvent.fromJson(it)),
    );
  };

  return OriginExternals(
    getAllSourcedEvents: getAllSourcedEvents,
    pushSourcedEvent: (event) async => prefs.setString(
      'events',
      jsonEncode([...await getAllSourcedEvents(), event]),
    ),
  );
};
