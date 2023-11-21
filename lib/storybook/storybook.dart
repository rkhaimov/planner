import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/createApp.dart';

import './behaviour/createUseBehaviour.dart';
import './view/menu.dart';
import 'types.dart';

final createStorybook = (StoriesStruct stories) async {
  final useBehaviour = await createUseBehaviour(stories);

  return HookBuilder(
    builder: (context) {
      final behaviour = useBehaviour();

      return Root(
        key: ValueKey(behaviour.active.story),
        externals: behaviour.active.externals,
        ui: Menu(
          key: ValueKey(behaviour.active),
          selected: behaviour.active.story,
          onSelect: behaviour.setStory,
          nodes: stories.all,
          child: const UI(),
        ),
      );
    },
  );
};
