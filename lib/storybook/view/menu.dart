import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/reusables/hooks.dart';
import 'package:rxdart/rxdart.dart';

import '../story_foundations.dart';

class Menu extends HookWidget {
  final Widget child;
  final Story selected;
  final Iterable<Node> nodes;
  final void Function(Story) onSelect;

  const Menu({
    super.key,
    required this.child,
    required this.selected,
    required this.onSelect,
    required this.nodes,
  });

  @override
  Widget build(context) {
    final key = _useToggle(this);

    return Stack(children: [
      child,
      Stack(
        children: [
          DrawerController(
            key: key,
            alignment: DrawerAlignment.start,
            child: Drawer(
              child: SafeArea(
                child: ListView(
                  children: _buildTiles(context, selected, nodes, 0).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }

  Iterable<Widget> _buildTiles(
    BuildContext context,
    Story active,
    Iterable<Node> nodes,
    int level,
  ) =>
      (nodes.toList()
            ..sort((left, right) => _orderStoryNodes(active, left, right)))
          .map((node) => _buildTile(context, active, node, level));

  Widget _buildTile(
    BuildContext context,
    Story active,
    Node node,
    int level,
  ) =>
      switch (node) {
        Story() => ListTile(
            contentPadding: EdgeInsets.only(left: 8 * (level + 1), right: 8),
            selected: _isNodeActive(active, node),
            title: Text(node.title),
            onTap: () => onSelect(node),
          ),
        Group() => ExpansionTile(
            tilePadding: EdgeInsets.only(left: 8 * (level + 1), right: 8),
            initiallyExpanded: _isNodeActive(active, node),
            title: Text(node.title,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            children: _buildTiles(context, active, node.children, level + 1).toList(),
          ),
      };

  int _orderStoryNodes(Story active, Node left, Node right) {
    if (_orderActiveOnTop(active, left, right) == 0) {
      return _orderAlphabetically(left, right);
    }

    return _orderActiveOnTop(active, left, right);
  }

  int _orderActiveOnTop(Story active, Node left, Node right) {
    if (left is Story || right is Story) {
      return 0;
    }

    if (_isNodeActive(active, left)) {
      return -1;
    }

    if (_isNodeActive(active, right)) {
      return 1;
    }

    return 0;
  }

  int _orderAlphabetically(Node left, Node right) {
    if (left is Story || right is Story) {
      return 0;
    }

    return left.title.compareTo(right.title);
  }
}

bool _isNodeActive(Story active, Node node) {
  if (node is Story) {
    return node == active;
  }

  final group = node as Group;

  return group.children.any((element) => _isNodeActive(active, element));
}

final _useToggle = (Menu self) {
  final key = useMemoized(() => GlobalKey<DrawerControllerState>());

  useStreamEffect(
    () => _createKeyboardToggle().doOnData((_) => key.currentState?.open()),
    [],
  );

  return key;
};

Stream<void> _createKeyboardToggle() {
  final key$ = PublishSubject<KeyData>();

  PlatformDispatcher.instance.onKeyData = (key) {
    key$.add(key);

    return false;
  };

  return key$.where((key) => key.character == '`').mapTo(null);
}
