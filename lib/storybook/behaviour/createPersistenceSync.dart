import 'package:planner/storybook/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../story_foundations.dart';
import 'utils.dart';

final createPersistenceSync = (StoriesStruct stories) async {
  final prefs = await SharedPreferences.getInstance();

  final active = prefs.getString('active_story');

  return (
    active: active == null ? null : _dematerialize(active, stories),
    setActive: (Story next) =>
        prefs.setString('active_story', _materialize(next, stories))
  );
};

String _materialize(Story story, StoriesStruct stories) {
  final map = createPathToStoryMap([stories.fallback, ...stories.all]);

  return map.entries.singleWhere((element) => element.value == story).key;
}

Story? _dematerialize(String path, StoriesStruct stories) {
  final map = createPathToStoryMap([stories.fallback, ...stories.all]);

  return map[path];
}
