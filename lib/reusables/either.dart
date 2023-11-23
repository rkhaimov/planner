sealed class Either<TLeft, TRight> {
  factory Either.left(TLeft value) => Left(value);

  factory Either.right(TRight value) => Right(value);

  Either();

  R fold<R>(R Function(TLeft value) onLeft, R Function(TRight value) onRight);
}

class Right<TRight> extends Either<Never, TRight> {
  TRight value;

  Right(this.value);

  @override
  R fold<R>(R Function(Never value) onLeft, R Function(TRight value) onRight) =>
      onRight(value);
}

class Left<TLeft> extends Either<TLeft, Never> {
  TLeft value;

  Left(this.value);

  @override
  R fold<R>(R Function(TLeft value) onLeft, R Function(Never value) onRight) =>
      onLeft(value);
}
