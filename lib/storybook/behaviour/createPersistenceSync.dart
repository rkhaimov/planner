import 'package:shared_preferences/shared_preferences.dart';

import '../story_foundations.dart';
import 'utils.dart';

final createPersistenceSync = (Iterable<Node> nodes) async {
  final prefs = await SharedPreferences.getInstance();

  final active = prefs.getString('active_story');

  return (
    active: active == null ? null : _dematerialize(active, nodes),
    setActive: (Story next) =>
        prefs.setString('active_story', _materialize(next, nodes))
  );
};

String _materialize(Story story, Iterable<Node> nodes) {
  final map = createPathToStoryMap(nodes);

  return map.entries.singleWhere((element) => element.value == story).key;
}

Story? _dematerialize(String path, Iterable<Node> nodes) {
  final map = createPathToStoryMap(nodes);

  return map[path];
}
