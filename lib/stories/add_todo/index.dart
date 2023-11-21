import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/stories/add_todo/useBehaviour.dart';

final askForToDoInfo = (BuildContext context) => Navigator.of(context)
    .push(MaterialPageRoute(builder: (_) => const _AddToDo()));

class _AddToDo extends HookWidget {
  const _AddToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final behaviour = useBehaviour();

    return Scaffold(
      appBar: AppBar(title: const Text('ADD TODO')),
      floatingActionButton: IconButton(
        onPressed: behaviour.submit,
        icon: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: behaviour.title,
              decoration: const InputDecoration(labelText: 'Заголовок'),
            ),
            TextFormField(
              controller: behaviour.description,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(labelText: 'Описание'),
              minLines: 3,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
