import 'package:planner/reusables/types.dart';
import 'package:planner/reusables/utils.dart';

// TODO: Constructor should have only zero and subsequent factories
class ID {
  final int value;

  ID(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => value == requireType<ID>(other).value;
}

sealed class SourcedEvent {
  final ID parent;
  final DateTime at;

  SourcedEvent(this.parent, this.at);
}

class CreatedSE extends SourcedEvent {
  CreatedSE(super.parent, super.at);
}

class TitleChangedSE extends SourcedEvent {
  final String title;

  TitleChangedSE(super.parent, super.at, this.title);
}

class DescriptionChangedSE extends SourcedEvent {
  final String description;

  DescriptionChangedSE(super.parent, super.at, this.description);
}

class StatusChangedSE extends SourcedEvent {
  final ToDoStatus status;

  StatusChangedSE(super.parent, super.at, this.status);
}
