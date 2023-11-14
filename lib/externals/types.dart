import 'package:planner/reusables/types.dart';

class ToDoID {
  final String id;

  ToDoID(this.id);
}

// TODO: What about deleting todos?
class ToDoSourcedEventAggregate {
  final ToDoID id;
  final ToDoInitialSourced initial;
  final Iterable<ToDoSourcedEvent> events;

  ToDoSourcedEventAggregate({
    required this.id,
    required this.initial,
    required this.events,
  });
}

class ToDoInitialSourced {
  final ToDoTitleChangedSE title;
  final ToDoDescriptionChangedSE description;
  final ToDoStatusChangedSE status;

  ToDoInitialSourced({
    required this.title,
    required this.description,
    required this.status,
  });
}

sealed class ToDoSourcedEvent {}

class ToDoCreatedSE extends ToDoSourcedEvent {
  ToDoCreatedSE();
}

class ToDoTitleChangedSE extends ToDoSourcedEvent {
  final String title;

  ToDoTitleChangedSE(this.title);
}

class ToDoDescriptionChangedSE extends ToDoSourcedEvent {
  final String description;

  ToDoDescriptionChangedSE(this.description);
}

class ToDoStatusChangedSE extends ToDoSourcedEvent {
  final ToDoStatus status;

  ToDoStatusChangedSE(this.status);
}

class ToDoCategoryChangedSE extends ToDoSourcedEvent {
  final String? category;

  ToDoCategoryChangedSE(this.category);
}
