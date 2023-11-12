import '../story_foundations.dart';

Map<String, Story> createPathToStoryMap(Iterable<Node> nodes) =>
    Map.fromEntries(nodes.expand((node) => createPathToStoryEntry(node)));

Iterable<MapEntry<String, Story>> createPathToStoryEntry(Node node) =>
    switch (node) {
      Story() => [MapEntry(node.title, node)],
      Group() => node.children
          .expand((child) => createPathToStoryEntry(child))
          .map((child) => MapEntry('${node.title}_${child.key}', child.value)),
    };
