sealed class Either<TLeft, TRight> {
  factory Either.left(TLeft value) => Left(value);

  factory Either.right(TRight value) => Right(value);

  Either();
}

class Right<TRight> extends Either<Never, TRight> {
  TRight value;

  Right(this.value);
}

class Left<TLeft> extends Either<TLeft, Never> {
  TLeft value;

  Left(this.value);
}
