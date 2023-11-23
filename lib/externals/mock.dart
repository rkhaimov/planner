import 'package:planner/externals/externals.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/storybook/recorder.dart';

final createMockOriginExternals = () {
  final pushed = <SourcedEvent>[];

  return OriginExternals(
    getAllSourcedEvents: () async => pushed,
    pushSourcedEvent: (event) async => pushed.add(event),
    updateDataConsistency: (events) async {},
  );
};

extension Mock on OriginExternals {
  spy(Recorder recorder) => OriginExternals(
        getAllSourcedEvents: () {
          recorder.query('getAllSourcedEvents', []);

          return getAllSourcedEvents();
        },
        pushSourcedEvent: (event) {
          recorder.query('pushSourcedEvent', [event]);

          return pushSourcedEvent(event);
        },
        updateDataConsistency: (events) {
          recorder.query('updateDataConsistency', [events]);

          return updateDataConsistency(events);
        },
      );
}
