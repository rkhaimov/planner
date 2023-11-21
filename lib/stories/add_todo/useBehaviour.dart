import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';

final useBehaviour = () {
  final context = useContext();
  final externals = useExternals();
  final title = useTextEditingController();
  final description = useTextEditingController();

  final submit = () async {
    final last = (await externals.getAllSourcedEvents().request()).lastOrNull;

    final id = last == null ? ID.zero() : ID.after(last.parent);
    final at = now();

    await externals.pushSourcedEvent(CreatedSE(id, at));

    if (title.text.isNotEmpty) {
      await externals.pushSourcedEvent(TitleChangedSE(id, at, title.text));
    }

    if (description.text.isNotEmpty) {
      await externals
          .pushSourcedEvent(DescriptionChangedSE(id, at, description.text));
    }

    Navigator.of(context).pop();
  };

  return (
    title: title,
    description: description,
    submit: submit,
  );
};
