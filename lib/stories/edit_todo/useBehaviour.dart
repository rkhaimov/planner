import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/types.dart';

final useBehaviour = ({required ToDoStruct todo}) {
  final context = useContext();
  final externals = useExternals();
  final title = useTextEditingController(text: todo.title?.raw);
  final description = useTextEditingController(text: todo.description?.raw);
  final category = useTextEditingController(text: todo.category?.value.raw);

  // TODO: Should be optimized
  // TODO: Empty string and null string should be the same
  final submit = () async {
    final at = now();

    await externals.pushSourcedEvent(
      TitleChangedSE(
        todo.id,
        at,
        NonEmptyString.create(title.text),
      ),
    );

    await externals.pushSourcedEvent(
      DescriptionChangedSE(
        todo.id,
        at,
        NonEmptyString.create(description.text),
      ),
    );

    await externals.pushSourcedEvent(
      CategoryChangedSE(
        todo.id,
        at,
        NonEmptyString.create(category.text),
      ),
    );

    Navigator.of(context).pop();
  };

  return (
    title: title,
    description: description,
    category: category,
    submit: submit,
  );
};
