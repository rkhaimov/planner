import 'package:planner/reusables/utils.dart';

enum Mode {
  TESTING,
  PRODUCTION,
}

class Environment {
  final Mode mode;

  Environment({required this.mode});
}

final environment = Environment(mode: _createMode());

final _createMode = () {
  if (const String.fromEnvironment('MODE') == 'PRODUCTION') {
    return Mode.PRODUCTION;
  }

  require(const String.fromEnvironment('MODE') == 'TESTING');

  return Mode.TESTING;
};
