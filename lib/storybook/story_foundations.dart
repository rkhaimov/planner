import 'package:planner/externals/externals.dart';

import 'tester/index.dart';

sealed class Node {
  final String title;

  Node({required this.title});
}

class Group extends Node {
  final Iterable<Node> children;

  Group(String title, this.children) : super(title: title);
}

class Story extends Node {
  final ActFunction act;
  final Iterable<String> commands;
  final ArrangeFunction arrange;

  Story({
    required super.title,
    required this.act,
    required this.commands,
    required this.arrange,
  });
}

final createGroup =
    (String title, Iterable<Node> children) => Group(title, children);

final createStory = <TParams>({
  required String title,
  ActFunction? act,
  ArrangeFunction? arrange,
  Iterable<String>? commands,
}) =>
    Story(
      title: title,
      act: act ?? (it) => it,
      commands: commands ?? [],
      arrange: arrange ?? (it) => it,
    );

typedef ActFunction = ActBuilder Function(ActBuilder actor);
typedef ArrangeFunction = OriginExternals Function(OriginExternals externals);
