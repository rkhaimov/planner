import 'dart:convert';

import 'package:flutter/foundation.dart';

class Recorder {
  final void Function(String method, Iterable<dynamic> arguments) command;
  final void Function(String method, Iterable<dynamic> arguments) query;
  final bool Function(Iterable<String> commands) toMatchInteractions;

  Recorder({
    required this.command,
    required this.query,
    required this.toMatchInteractions,
  });
}

typedef CommandSnapshotStruct = ({String method, String args});

final createRecorder = () {
  var commands = <CommandSnapshotStruct>[];
  final escape = (String str) => str.replaceAll('\r', r'\r');

  return Recorder(
    command: (method, arguments) =>
        commands.add((method: method, args: jsonEncode(arguments))),
    // Run parsing therefore it can be tested
    query: (method, arguments) => jsonEncode(arguments),
    toMatchInteractions: (expected) {
      final actual = commands.map((it) => '${it.method}: ${it.args}');

      final passes = listEquals(
        actual.toList(),
        expected.map(escape).toList(),
      );

      if (passes) {
        print('\x1B[32mAll interactions occurred as expected\x1B[0m');
      } else {
        print('\x1B[31mCommands failed. The following was expected:\x1B[0m');

        actual.forEach((it) => print(it.toString()));
      }

      return passes;
    },
  );
};
