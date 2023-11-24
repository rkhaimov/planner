import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/non_empty_string.dart';

final useBehaviour = ({required AggregateStruct aggregate}) {
  final context = useContext();
  final externals = useExternals();

  final title = useTextEditingController(text: aggregate.title?.toString());

  final description =
      useTextEditingController(text: aggregate.description?.toString());

  final category =
      useTextEditingController(text: aggregate.category?.value.toString());

  final thought = useState(aggregate.thought ?? false);

  // TODO: Should be optimized
  // TODO: Empty string and null string should be the same
  final submit = () async {
    final at = now();

    await externals.pushSourcedEvent(
      TitleChangedSE(
        aggregate.id,
        at,
        NonEmptyString.create(title.text),
      ),
    );

    await externals.pushSourcedEvent(
      DescriptionChangedSE(
        aggregate.id,
        at,
        NonEmptyString.create(description.text),
      ),
    );

    await externals.pushSourcedEvent(
      CategoryChangedSE(
        aggregate.id,
        at,
        NonEmptyString.create(category.text),
      ),
    );

    await externals.pushSourcedEvent(
      thought.value
          ? MarkedAsThoughtSE(aggregate.id, at)
          : MarkedAsToDo(aggregate.id, at),
    );

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
