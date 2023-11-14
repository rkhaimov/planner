import 'package:rxdart/rxdart.dart';

import 'types.dart';

extension EssentialQuery<T> on Query<T> {
  Query<R> map<R>(R Function(T input) transform) => Query(
        request: () => request().then(transform),
        source: source,
      );
}

extension EssentialSource on Source {
  Future<T> updateAfter<T>(Future<T> command) => command.then(
        (response) {
          update();

          return response;
        },
      );
}

final createQuery = <T>({
  required Future<T> Function() request,
  required Source source,
}) =>
    Query(request: request, source: source);

final createSource = () {
  final subject = PublishSubject<void>();

  return Source(
    updates: () => subject,
    update: () => subject.add(null),
  );
};
