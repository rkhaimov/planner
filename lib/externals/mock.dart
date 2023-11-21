import 'package:planner/externals/externals.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/storybook/recorder.dart';

final createMockOriginExternals = () {
  final pushed = <SourcedEvent>[];

  return OriginExternals(
    getAllSourcedEvents: () async => pushed,
    pushSourcedEvent: (event) async => pushed.add(event),
  );
};

extension Mock on OriginExternals {
  spy(Recorder recorder) => OriginExternals(
        getAllSourcedEvents: () {
          recorder.query('getAllSourcedEvents', []);

          return getAllSourcedEvents();
        },
        pushSourcedEvent: (event) {
          recorder.command('pushSourcedEvent', [event]);

          return pushSourcedEvent(event);
        },
      );
}
