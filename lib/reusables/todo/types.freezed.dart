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
mixin _$ToDoStruct {
  ID get id => throw _privateConstructorUsedError;
  NonEmptyString? get title => throw _privateConstructorUsedError;
  NonEmptyString? get description => throw _privateConstructorUsedError;
  AggregateStatus? get status => throw _privateConstructorUsedError;
  CategoryStruct? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoStructCopyWith<ToDoStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStructCopyWith<$Res> {
  factory $ToDoStructCopyWith(
          ToDoStruct value, $Res Function(ToDoStruct) then) =
      _$ToDoStructCopyWithImpl<$Res, ToDoStruct>;
  @useResult
  $Res call(
      {ID id,
      NonEmptyString? title,
      NonEmptyString? description,
      AggregateStatus? status,
      CategoryStruct? category});
}

/// @nodoc
class _$ToDoStructCopyWithImpl<$Res, $Val extends ToDoStruct>
    implements $ToDoStructCopyWith<$Res> {
  _$ToDoStructCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$ToDoStructImplCopyWith<$Res>
    implements $ToDoStructCopyWith<$Res> {
  factory _$$ToDoStructImplCopyWith(
          _$ToDoStructImpl value, $Res Function(_$ToDoStructImpl) then) =
      __$$ToDoStructImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      NonEmptyString? title,
      NonEmptyString? description,
      AggregateStatus? status,
      CategoryStruct? category});
}

/// @nodoc
class __$$ToDoStructImplCopyWithImpl<$Res>
    extends _$ToDoStructCopyWithImpl<$Res, _$ToDoStructImpl>
    implements _$$ToDoStructImplCopyWith<$Res> {
  __$$ToDoStructImplCopyWithImpl(
      _$ToDoStructImpl _value, $Res Function(_$ToDoStructImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ToDoStructImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
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

class _$ToDoStructImpl implements _ToDoStruct {
  _$ToDoStructImpl(
      {required this.id,
      this.title,
      this.description,
      this.status,
      this.category});

  @override
  final ID id;
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
    return 'ToDoStruct(id: $id, title: $title, description: $description, status: $status, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoStructImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, status, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoStructImplCopyWith<_$ToDoStructImpl> get copyWith =>
      __$$ToDoStructImplCopyWithImpl<_$ToDoStructImpl>(this, _$identity);
}

abstract class _ToDoStruct implements ToDoStruct {
  factory _ToDoStruct(
      {required final ID id,
      final NonEmptyString? title,
      final NonEmptyString? description,
      final AggregateStatus? status,
      final CategoryStruct? category}) = _$ToDoStructImpl;

  @override
  ID get id;
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
  _$$ToDoStructImplCopyWith<_$ToDoStructImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
