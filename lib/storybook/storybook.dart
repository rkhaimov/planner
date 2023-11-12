import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/createApp.dart';

import './behaviour/createUseBehaviour.dart';
import './view/menu.dart';
import 'types.dart';

final createStorybook = (Stories stories) async {
  final useBehaviour = await createUseBehaviour(stories);

  return createAppMaterial(
    HookBuilder(
      builder: (context) {
        final behaviour = useBehaviour();

        return Menu(
          key: ValueKey(behaviour.active),
          selected: behaviour.active,
          onSelect: behaviour.setStory,
          nodes: stories.all,
          child: createAppHome(),
        );
      },
    ),
  );
};
