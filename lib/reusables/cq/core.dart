import 'package:rxdart/rxdart.dart';

import 'types.dart';

Stream<Response<T>> toQueryResponseStream<T>(Query<T> query) {
  T? last;

  return query.source
      .updates()
      // Each next query by definition should start fetching immediately
      .startWith(null)
      .switchMap((_) async* {
        if (last != null) {
          yield (data: last as T, updating: true);
        }

        yield (data: await query.request(), updating: false);
      })
      .distinct((prev, next) => prev.updating && next.updating)
      .doOnData((it) => last = it.data);
}

typedef Response<T> = ({
  T data,
  bool updating,
});
