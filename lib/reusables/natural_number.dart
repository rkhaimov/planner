import 'package:planner/reusables/utils.dart';

class NaturalNumber {
  final int _raw;

  factory NaturalNumber.zero() => NaturalNumber._(0);

  factory NaturalNumber.fromJson(Object? json) {
    final n = requireType<int>(json);

    require(n >= 0, 'Number must be non negative');

    return NaturalNumber._(n);
  }

  NaturalNumber._(this._raw);

  NaturalNumber increment() => NaturalNumber._(_raw + 1);

  NaturalNumber max(NaturalNumber other) => _raw > other._raw ? this : other;

  int toJson() => _raw;
}
