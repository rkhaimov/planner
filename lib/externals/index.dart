import 'dart:convert';

import 'package:planner/externals/externals.dart';
import 'package:planner/externals/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

final createOriginExternals = () {
  final getAllSourcedEvents = () async {
    final prefs = await SharedPreferences.getInstance();

    final json = prefs.getString('events') ?? '[]';

    return List<SourcedEvent>.from(
      jsonDecode(json).map((it) => SourcedEvent.fromJson(it)),
    );
  };

  return OriginExternals(
    getAllSourcedEvents: getAllSourcedEvents,
    pushSourcedEvent: (event) async {
      final prefs = await SharedPreferences.getInstance();

      prefs.setString(
        'events',
        jsonEncode([...await getAllSourcedEvents(), event]),
      );
    },
    updateDataConsistency: (events) async {
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString('events', jsonEncode(events));
    },
  );
};
