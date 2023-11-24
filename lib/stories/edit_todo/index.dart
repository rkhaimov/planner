import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/reusables/types.dart';

import './useBehaviour.dart';

// TODO: Duplicate
// TODO: Add imports rules auto-formatter
final askForEditToDoInfo = (BuildContext context, ToDoStruct todo) =>
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => _EditToDo(todo: todo)));

class _EditToDo extends HookWidget {
  final ToDoStruct todo;

  const _EditToDo({required this.todo});

  @override
  Widget build(BuildContext context) {
    final behaviour = useBehaviour(todo: todo);

    return Scaffold(
      appBar: AppBar(title: const Text('EDIT TODO')),
      floatingActionButton: IconButton(
        onPressed: behaviour.submit,
        icon: const Icon(Icons.check),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: behaviour.title,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              controller: behaviour.description,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(labelText: 'Description'),
              minLines: 1,
              maxLines: 5,
            ),
            TextFormField(
              controller: behaviour.category,
              decoration: const InputDecoration(labelText: 'Category'),
            ),
          ],
        ),
      ),
    );
  }
}
