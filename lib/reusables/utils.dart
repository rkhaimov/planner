void require(bool value, [String? message]) {
  if (value.not()) {
    throw Exception(message ?? 'Requirement has failed');
  }
}

T requireNotNull<T>(T? value,
    [String message = 'Expected value to be defined']) {
  if (value == null) {
    throw Exception(message);
  }

  return value;
}

T requireType<T>(dynamic value, [String? message]) {
  if (value is T) {
    return value;
  }

  throw Exception(message ?? 'Expected value to have type $T');
}

extension Not on bool {
  bool not() => !this;
}
