import 'package:rxdart/rxdart.dart';

import 'types.dart';

Stream<T> toQueryResponseStream<T>(Query<T> query) => query.source
    .updates()
    // Each next query by definition should start fetching immediately
    .startWith(null)
    .asyncMap((_) => query.request());
