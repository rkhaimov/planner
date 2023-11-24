import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/reusables/utils.dart';

import './useBehaviour.dart';

// TODO: Duplicate
final askForCreateAggregateInfo = (BuildContext context) =>
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const _AddAggregate()));

class _AddAggregate extends HookWidget {
  const _AddAggregate();

  @override
  Widget build(BuildContext context) {
    final behaviour = useBehaviour();

    return Scaffold(
      appBar: AppBar(title: const Text('ADD AGGREGATE')),
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
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              value: behaviour.thought.value,
              onChanged: (_) =>
                  behaviour.thought.value = behaviour.thought.value.not(),
              title: Text('Thought'),
            ),
          ],
        ),
      ),
    );
  }
}
