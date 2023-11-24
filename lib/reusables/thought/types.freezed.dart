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
mixin _$ThoughtStruct {
  ID get id => throw _privateConstructorUsedError;
  NonEmptyString? get title => throw _privateConstructorUsedError;
  NonEmptyString? get description => throw _privateConstructorUsedError;
  CategoryStruct? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThoughtStructCopyWith<ThoughtStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThoughtStructCopyWith<$Res> {
  factory $ThoughtStructCopyWith(
          ThoughtStruct value, $Res Function(ThoughtStruct) then) =
      _$ThoughtStructCopyWithImpl<$Res, ThoughtStruct>;
  @useResult
  $Res call(
      {ID id,
      NonEmptyString? title,
      NonEmptyString? description,
      CategoryStruct? category});
}

/// @nodoc
class _$ThoughtStructCopyWithImpl<$Res, $Val extends ThoughtStruct>
    implements $ThoughtStructCopyWith<$Res> {
  _$ThoughtStructCopyWithImpl(this._value, this._then);

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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryStruct?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThoughtStructImplCopyWith<$Res>
    implements $ThoughtStructCopyWith<$Res> {
  factory _$$ThoughtStructImplCopyWith(
          _$ThoughtStructImpl value, $Res Function(_$ThoughtStructImpl) then) =
      __$$ThoughtStructImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      NonEmptyString? title,
      NonEmptyString? description,
      CategoryStruct? category});
}

/// @nodoc
class __$$ThoughtStructImplCopyWithImpl<$Res>
    extends _$ThoughtStructCopyWithImpl<$Res, _$ThoughtStructImpl>
    implements _$$ThoughtStructImplCopyWith<$Res> {
  __$$ThoughtStructImplCopyWithImpl(
      _$ThoughtStructImpl _value, $Res Function(_$ThoughtStructImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ThoughtStructImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryStruct?,
    ));
  }
}

/// @nodoc

class _$ThoughtStructImpl implements _ThoughtStruct {
  _$ThoughtStructImpl(
      {required this.id, this.title, this.description, this.category});

  @override
  final ID id;
  @override
  final NonEmptyString? title;
  @override
  final NonEmptyString? description;
  @override
  final CategoryStruct? category;

  @override
  String toString() {
    return 'ThoughtStruct(id: $id, title: $title, description: $description, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThoughtStructImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThoughtStructImplCopyWith<_$ThoughtStructImpl> get copyWith =>
      __$$ThoughtStructImplCopyWithImpl<_$ThoughtStructImpl>(this, _$identity);
}

abstract class _ThoughtStruct implements ThoughtStruct {
  factory _ThoughtStruct(
      {required final ID id,
      final NonEmptyString? title,
      final NonEmptyString? description,
      final CategoryStruct? category}) = _$ThoughtStructImpl;

  @override
  ID get id;
  @override
  NonEmptyString? get title;
  @override
  NonEmptyString? get description;
  @override
  CategoryStruct? get category;
  @override
  @JsonKey(ignore: true)
  _$$ThoughtStructImplCopyWith<_$ThoughtStructImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
