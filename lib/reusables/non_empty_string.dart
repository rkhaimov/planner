import 'utils.dart';

// Trimmed non empty string
class NonEmptyString {
  final String _value;

  static NonEmptyString? create(String source) {
    final trimmed = source.trim();

    if (trimmed.isEmpty) {
      return null;
    }

    return NonEmptyString._(trimmed);
  }

  NonEmptyString._(this._value);

  NonEmptyString trim() => this;

  NonEmptyString toUpperCase() => NonEmptyString._(_value.toUpperCase());

  (NonEmptyString, String) toFirstAndRest() =>
      (NonEmptyString._(_value.substring(0, 1)), _value.substring(1));

  NonEmptyString join(String right) =>
      NonEmptyString._('$_value${NonEmptyString.create(right)?._value ?? ''}');

  factory NonEmptyString.fromJson(Object? json) =>
      requireNotNull(NonEmptyString.create(json as String));

  @override
  int get hashCode => _value.hashCode;

  @override
  bool operator ==(Object other) =>
      _value == requireType<NonEmptyString>(other)._value;

  @override
  String toString() => _value;

  String toJson() => _value;
}
