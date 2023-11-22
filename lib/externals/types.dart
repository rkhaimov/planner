import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/reusables/utils.dart';

part 'types.freezed.dart';
part 'types.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class ID {
  final int value;

  factory ID.zero() => ID._(0);

  factory ID.after(ID other) => ID._(other.value + 1);

  factory ID.fromJson(Object? json) => ID._(json as int);

  ID._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => value == requireType<ID>(other).value;

  int toJson() => value;
}

@freezed
sealed class SourcedEvent with _$SourcedEvent {
  factory SourcedEvent.CreatedSE(
    ID parent,
    DateTime at,
  ) = CreatedSE;

  factory SourcedEvent.TitleChangedSE(
    ID parent,
    DateTime at,
    String title,
  ) = TitleChangedSE;

  factory SourcedEvent.DescriptionChangedSE(
    ID parent,
    DateTime at,
    String description,
  ) = DescriptionChangedSE;

  factory SourcedEvent.MarkedAsThoughtSE(ID parent, DateTime at) =
      MarkedAsThoughtSE;

  factory SourcedEvent.CategoryChangedSE(
    ID parent,
    DateTime at,
    String category,
  ) = CategoryChangedSE;

  factory SourcedEvent.StatusChangedSE(
    ID parent,
    DateTime at,
    ToDoStatus status,
  ) = StatusChangedSE;

  factory SourcedEvent.fromJson(Map<String, dynamic> json) =>
      _$SourcedEventFromJson(json);
}
