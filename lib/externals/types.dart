import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/reusables/natural_number.dart';
import 'package:planner/reusables/non_empty_string.dart';
import 'package:planner/reusables/utils.dart';

part 'types.freezed.dart';

part 'types.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class ID {
  final NaturalNumber _raw;

  factory ID.initial() => ID._(NaturalNumber.zero());

  factory ID.last(ID left, ID right) => ID._(left._raw.max(right._raw));

  factory ID.fromJson(Object? json) => ID._(NaturalNumber.fromJson(json));

  ID._(this._raw);

  ID next() => ID._(_raw.increment());

  @override
  int get hashCode => _raw.hashCode;

  @override
  bool operator ==(Object other) => _raw == requireType<ID>(other)._raw;

  int toJson() => _raw.toJson();
}

// TODO: Replace primitives with complex types
@freezed
sealed class SourcedEvent with _$SourcedEvent {
  factory SourcedEvent.CreatedSE(
    ID parent,
    DateTime at,
  ) = CreatedSE;

  factory SourcedEvent.DeletedSE(
    ID parent,
    DateTime at,
  ) = DeletedSE;

  factory SourcedEvent.TitleChangedSE(
    ID parent,
    DateTime at,
    NonEmptyString? title,
  ) = TitleChangedSE;

  factory SourcedEvent.DescriptionChangedSE(
    ID parent,
    DateTime at,
    NonEmptyString? description,
  ) = DescriptionChangedSE;

  factory SourcedEvent.MarkedAsThoughtSE(ID parent, DateTime at) =
      MarkedAsThoughtSE;

  factory SourcedEvent.MarkedAsToDoSE(ID parent, DateTime at) = MarkedAsToDoSE;

  factory SourcedEvent.CategoryChangedSE(
    ID parent,
    DateTime at,
    NonEmptyString? category,
  ) = CategoryChangedSE;

  factory SourcedEvent.MarkedAsInProgress(ID parent, DateTime at) =
      MarkedAsInProgress;

  factory SourcedEvent.MarkedAsDone(ID parent, DateTime at) = MarkedAsDone;

  factory SourcedEvent.MarkedAsToDo(ID parent, DateTime at) = MarkedAsToDo;

  factory SourcedEvent.fromJson(Map<String, dynamic> json) =>
      _$SourcedEventFromJson(json);
}
