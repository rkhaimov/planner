// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AggregateStruct {
  ID get id => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get thought => throw _privateConstructorUsedError;
  NonEmptyString? get title => throw _privateConstructorUsedError;
  NonEmptyString? get description => throw _privateConstructorUsedError;
  AggregateStatus? get status => throw _privateConstructorUsedError;
  CategoryStruct? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AggregateStructCopyWith<AggregateStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateStructCopyWith<$Res> {
  factory $AggregateStructCopyWith(
          AggregateStruct value, $Res Function(AggregateStruct) then) =
      _$AggregateStructCopyWithImpl<$Res, AggregateStruct>;
  @useResult
  $Res call(
      {ID id,
      bool deleted,
      bool thought,
      NonEmptyString? title,
      NonEmptyString? description,
      AggregateStatus? status,
      CategoryStruct? category});
}

/// @nodoc
class _$AggregateStructCopyWithImpl<$Res, $Val extends AggregateStruct>
    implements $AggregateStructCopyWith<$Res> {
  _$AggregateStructCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deleted = null,
    Object? thought = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      thought: null == thought
          ? _value.thought
          : thought // ignore: cast_nullable_to_non_nullable
              as bool,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NonEmptyString?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as NonEmptyString?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AggregateStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryStruct?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AggregateStructImplCopyWith<$Res>
    implements $AggregateStructCopyWith<$Res> {
  factory _$$AggregateStructImplCopyWith(_$AggregateStructImpl value,
          $Res Function(_$AggregateStructImpl) then) =
      __$$AggregateStructImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      bool deleted,
      bool thought,
      NonEmptyString? title,
      NonEmptyString? description,
      AggregateStatus? status,
      CategoryStruct? category});
}

/// @nodoc
class __$$AggregateStructImplCopyWithImpl<$Res>
    extends _$AggregateStructCopyWithImpl<$Res, _$AggregateStructImpl>
    implements _$$AggregateStructImplCopyWith<$Res> {
  __$$AggregateStructImplCopyWithImpl(
      _$AggregateStructImpl _value, $Res Function(_$AggregateStructImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deleted = null,
    Object? thought = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? category = freezed,
  }) {
    return _then(_$AggregateStructImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      thought: null == thought
          ? _value.thought
          : thought // ignore: cast_nullable_to_non_nullable
              as bool,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NonEmptyString?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as NonEmptyString?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AggregateStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryStruct?,
    ));
  }
}

/// @nodoc

class _$AggregateStructImpl implements _AggregateStruct {
  _$AggregateStructImpl(
      {required this.id,
      required this.deleted,
      required this.thought,
      this.title,
      this.description,
      this.status,
      this.category});

  @override
  final ID id;
  @override
  final bool deleted;
  @override
  final bool thought;
  @override
  final NonEmptyString? title;
  @override
  final NonEmptyString? description;
  @override
  final AggregateStatus? status;
  @override
  final CategoryStruct? category;

  @override
  String toString() {
    return 'AggregateStruct(id: $id, deleted: $deleted, thought: $thought, title: $title, description: $description, status: $status, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateStructImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.thought, thought) || other.thought == thought) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, deleted, thought, title, description, status, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregateStructImplCopyWith<_$AggregateStructImpl> get copyWith =>
      __$$AggregateStructImplCopyWithImpl<_$AggregateStructImpl>(
          this, _$identity);
}

abstract class _AggregateStruct implements AggregateStruct {
  factory _AggregateStruct(
      {required final ID id,
      required final bool deleted,
      required final bool thought,
      final NonEmptyString? title,
      final NonEmptyString? description,
      final AggregateStatus? status,
      final CategoryStruct? category}) = _$AggregateStructImpl;

  @override
  ID get id;
  @override
  bool get deleted;
  @override
  bool get thought;
  @override
  NonEmptyString? get title;
  @override
  NonEmptyString? get description;
  @override
  AggregateStatus? get status;
  @override
  CategoryStruct? get category;
  @override
  @JsonKey(ignore: true)
  _$$AggregateStructImplCopyWith<_$AggregateStructImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
