import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/reusables/types.dart';

import 'types.dart';

part 'deprecated.freezed.dart';

part 'deprecated.g.dart';

@freezed
sealed class SourcedEventDeprecated with _$SourcedEventDeprecated {
  factory SourcedEventDeprecated.CreatedSE(
    ID parent,
    DateTime at,
  ) = CreatedSEDeprecated;

  factory SourcedEventDeprecated.TitleChangedSE(
    ID parent,
    DateTime at,
    String title,
  ) = TitleChangedSEDeprecated;

  factory SourcedEventDeprecated.DescriptionChangedSE(
    ID parent,
    DateTime at,
    String description,
  ) = DescriptionChangedSEDeprecated;

  factory SourcedEventDeprecated.MarkedAsThoughtSE(ID parent, DateTime at) =
      MarkedAsThoughtSEDeprecated;

  factory SourcedEventDeprecated.CategoryChangedSE(
    ID parent,
    DateTime at,
    String category,
  ) = CategoryChangedSEDeprecated;

  factory SourcedEventDeprecated.StatusChangedSE(
    ID parent,
    DateTime at,
    ToDoStatus status,
  ) = StatusChangedSEDeprecated;

  factory SourcedEventDeprecated.fromJson(Map<String, dynamic> json) =>
      _$SourcedEventDeprecatedFromJson(json);
}
