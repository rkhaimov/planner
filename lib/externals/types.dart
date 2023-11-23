import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/reusables/either.dart';
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

// Trimmed non empty string
class NonEmptyString {
  final String raw;

  static NonEmptyString? create(String source) {
    final trimmed = source.trim();

    if (trimmed.isEmpty) {
      return null;
    }

    return NonEmptyString._(trimmed);
  }

  NonEmptyString._(this.raw);

  NonEmptyString trim() => this;

  NonEmptyString toUpperCase() => NonEmptyString._(raw.toUpperCase());

  (NonEmptyString, String) toFirstAndRest() =>
      (NonEmptyString._(raw.substring(0, 1)), raw.substring(1));

  NonEmptyString join(String right) =>
      NonEmptyString._('$raw${NonEmptyString.create(right)?.raw ?? ''}');

  factory NonEmptyString.fromJson(Object? json) =>
      requireNotNull(NonEmptyString.create(json as String));

  @override
  int get hashCode => raw.hashCode;

  @override
  bool operator ==(Object other) =>
      raw == requireType<NonEmptyString>(other).raw;

  String toJson() => raw;
}

// TODO: Replace primitives with complex types
@freezed
sealed class SourcedEvent with _$SourcedEvent {
  factory SourcedEvent.CreatedSE(
    ID parent,
    DateTime at,
  ) = CreatedSE;

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
