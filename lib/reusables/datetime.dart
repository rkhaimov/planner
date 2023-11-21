import 'package:planner/environment.dart';

final now = () => switch (environment.mode) {
      Mode.TESTING => DateTime(2023, 3, 1),
      Mode.PRODUCTION => DateTime.now(),
    };
