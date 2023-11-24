import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/non_empty_string.dart';

final useBehaviour = () {
  final context = useContext();
  final externals = useExternals();
  final title = useTextEditingController();
  final description = useTextEditingController();
  final category = useTextEditingController();
  final thought = useState(false);

  final submit = () async {
    final id = (await externals.getAllSourcedEvents().request())
        .whereType<CreatedSE>()
        .fold(ID.initial(), (latest, curr) => ID.last(latest, curr.parent))
        .next();

    final at = now();

    await externals.pushSourcedEvent(CreatedSE(id, at));

    await externals.pushSourcedEvent(TitleChangedSE(
      id,
      at,
      NonEmptyString.create(title.text),
    ));

    await externals.pushSourcedEvent(DescriptionChangedSE(
      id,
      at,
      NonEmptyString.create(description.text),
    ));

    await externals.pushSourcedEvent(CategoryChangedSE(
      id,
      at,
      NonEmptyString.create(category.text),
    ));

    if (thought.value) {
      await externals.pushSourcedEvent(MarkedAsThoughtSE(id, at));
    }

    Navigator.of(context).pop();
  };

  return (
    title: title,
    description: description,
    category: category,
    thought: thought,
    submit: submit,
  );
};
