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

SourcedEvent _$SourcedEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'CreatedSE':
      return CreatedSE.fromJson(json);
    case 'TitleChangedSE':
      return TitleChangedSE.fromJson(json);
    case 'DescriptionChangedSE':
      return DescriptionChangedSE.fromJson(json);
    case 'MarkedAsThoughtSE':
      return MarkedAsThoughtSE.fromJson(json);
    case 'CategoryChangedSE':
      return CategoryChangedSE.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SourcedEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SourcedEvent {
  ID get parent => throw _privateConstructorUsedError;
  DateTime get at => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcedEventCopyWith<SourcedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcedEventCopyWith<$Res> {
  factory $SourcedEventCopyWith(
          SourcedEvent value, $Res Function(SourcedEvent) then) =
      _$SourcedEventCopyWithImpl<$Res, SourcedEvent>;
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class _$SourcedEventCopyWithImpl<$Res, $Val extends SourcedEvent>
    implements $SourcedEventCopyWith<$Res> {
  _$SourcedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
  }) {
    return _then(_value.copyWith(
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatedSEImplCopyWith<$Res>
    implements $SourcedEventCopyWith<$Res> {
  factory _$$CreatedSEImplCopyWith(
          _$CreatedSEImpl value, $Res Function(_$CreatedSEImpl) then) =
      __$$CreatedSEImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class __$$CreatedSEImplCopyWithImpl<$Res>
    extends _$SourcedEventCopyWithImpl<$Res, _$CreatedSEImpl>
    implements _$$CreatedSEImplCopyWith<$Res> {
  __$$CreatedSEImplCopyWithImpl(
      _$CreatedSEImpl _value, $Res Function(_$CreatedSEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
  }) {
    return _then(_$CreatedSEImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedSEImpl implements CreatedSE {
  _$CreatedSEImpl(this.parent, this.at, {final String? $type})
      : $type = $type ?? 'CreatedSE';

  factory _$CreatedSEImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedSEImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEvent.CreatedSE(parent: $parent, at: $at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedSEImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedSEImplCopyWith<_$CreatedSEImpl> get copyWith =>
      __$$CreatedSEImplCopyWithImpl<_$CreatedSEImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) {
    return CreatedSE(parent, at);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) {
    return CreatedSE?.call(parent, at);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (CreatedSE != null) {
      return CreatedSE(parent, at);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) {
    return CreatedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) {
    return CreatedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (CreatedSE != null) {
      return CreatedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedSEImplToJson(
      this,
    );
  }
}

abstract class CreatedSE implements SourcedEvent {
  factory CreatedSE(final ID parent, final DateTime at) = _$CreatedSEImpl;

  factory CreatedSE.fromJson(Map<String, dynamic> json) =
      _$CreatedSEImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  @override
  @JsonKey(ignore: true)
  _$$CreatedSEImplCopyWith<_$CreatedSEImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedSEImplCopyWith<$Res>
    implements $SourcedEventCopyWith<$Res> {
  factory _$$TitleChangedSEImplCopyWith(_$TitleChangedSEImpl value,
          $Res Function(_$TitleChangedSEImpl) then) =
      __$$TitleChangedSEImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String title});
}

/// @nodoc
class __$$TitleChangedSEImplCopyWithImpl<$Res>
    extends _$SourcedEventCopyWithImpl<$Res, _$TitleChangedSEImpl>
    implements _$$TitleChangedSEImplCopyWith<$Res> {
  __$$TitleChangedSEImplCopyWithImpl(
      _$TitleChangedSEImpl _value, $Res Function(_$TitleChangedSEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? title = null,
  }) {
    return _then(_$TitleChangedSEImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleChangedSEImpl implements TitleChangedSE {
  _$TitleChangedSEImpl(this.parent, this.at, this.title, {final String? $type})
      : $type = $type ?? 'TitleChangedSE';

  factory _$TitleChangedSEImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleChangedSEImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;
  @override
  final String title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEvent.TitleChangedSE(parent: $parent, at: $at, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedSEImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedSEImplCopyWith<_$TitleChangedSEImpl> get copyWith =>
      __$$TitleChangedSEImplCopyWithImpl<_$TitleChangedSEImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) {
    return TitleChangedSE(parent, at, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) {
    return TitleChangedSE?.call(parent, at, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (TitleChangedSE != null) {
      return TitleChangedSE(parent, at, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) {
    return TitleChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) {
    return TitleChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (TitleChangedSE != null) {
      return TitleChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleChangedSEImplToJson(
      this,
    );
  }
}

abstract class TitleChangedSE implements SourcedEvent {
  factory TitleChangedSE(
          final ID parent, final DateTime at, final String title) =
      _$TitleChangedSEImpl;

  factory TitleChangedSE.fromJson(Map<String, dynamic> json) =
      _$TitleChangedSEImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TitleChangedSEImplCopyWith<_$TitleChangedSEImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedSEImplCopyWith<$Res>
    implements $SourcedEventCopyWith<$Res> {
  factory _$$DescriptionChangedSEImplCopyWith(_$DescriptionChangedSEImpl value,
          $Res Function(_$DescriptionChangedSEImpl) then) =
      __$$DescriptionChangedSEImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String description});
}

/// @nodoc
class __$$DescriptionChangedSEImplCopyWithImpl<$Res>
    extends _$SourcedEventCopyWithImpl<$Res, _$DescriptionChangedSEImpl>
    implements _$$DescriptionChangedSEImplCopyWith<$Res> {
  __$$DescriptionChangedSEImplCopyWithImpl(_$DescriptionChangedSEImpl _value,
      $Res Function(_$DescriptionChangedSEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? description = null,
  }) {
    return _then(_$DescriptionChangedSEImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescriptionChangedSEImpl implements DescriptionChangedSE {
  _$DescriptionChangedSEImpl(this.parent, this.at, this.description,
      {final String? $type})
      : $type = $type ?? 'DescriptionChangedSE';

  factory _$DescriptionChangedSEImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescriptionChangedSEImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEvent.DescriptionChangedSE(parent: $parent, at: $at, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedSEImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedSEImplCopyWith<_$DescriptionChangedSEImpl>
      get copyWith =>
          __$$DescriptionChangedSEImplCopyWithImpl<_$DescriptionChangedSEImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) {
    return DescriptionChangedSE(parent, at, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) {
    return DescriptionChangedSE?.call(parent, at, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (DescriptionChangedSE != null) {
      return DescriptionChangedSE(parent, at, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) {
    return DescriptionChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) {
    return DescriptionChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (DescriptionChangedSE != null) {
      return DescriptionChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DescriptionChangedSEImplToJson(
      this,
    );
  }
}

abstract class DescriptionChangedSE implements SourcedEvent {
  factory DescriptionChangedSE(
          final ID parent, final DateTime at, final String description) =
      _$DescriptionChangedSEImpl;

  factory DescriptionChangedSE.fromJson(Map<String, dynamic> json) =
      _$DescriptionChangedSEImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$DescriptionChangedSEImplCopyWith<_$DescriptionChangedSEImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkedAsThoughtSEImplCopyWith<$Res>
    implements $SourcedEventCopyWith<$Res> {
  factory _$$MarkedAsThoughtSEImplCopyWith(_$MarkedAsThoughtSEImpl value,
          $Res Function(_$MarkedAsThoughtSEImpl) then) =
      __$$MarkedAsThoughtSEImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class __$$MarkedAsThoughtSEImplCopyWithImpl<$Res>
    extends _$SourcedEventCopyWithImpl<$Res, _$MarkedAsThoughtSEImpl>
    implements _$$MarkedAsThoughtSEImplCopyWith<$Res> {
  __$$MarkedAsThoughtSEImplCopyWithImpl(_$MarkedAsThoughtSEImpl _value,
      $Res Function(_$MarkedAsThoughtSEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
  }) {
    return _then(_$MarkedAsThoughtSEImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkedAsThoughtSEImpl implements MarkedAsThoughtSE {
  _$MarkedAsThoughtSEImpl(this.parent, this.at, {final String? $type})
      : $type = $type ?? 'MarkedAsThoughtSE';

  factory _$MarkedAsThoughtSEImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkedAsThoughtSEImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEvent.MarkedAsThoughtSE(parent: $parent, at: $at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkedAsThoughtSEImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkedAsThoughtSEImplCopyWith<_$MarkedAsThoughtSEImpl> get copyWith =>
      __$$MarkedAsThoughtSEImplCopyWithImpl<_$MarkedAsThoughtSEImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) {
    return MarkedAsThoughtSE(parent, at);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) {
    return MarkedAsThoughtSE?.call(parent, at);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (MarkedAsThoughtSE != null) {
      return MarkedAsThoughtSE(parent, at);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) {
    return MarkedAsThoughtSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) {
    return MarkedAsThoughtSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (MarkedAsThoughtSE != null) {
      return MarkedAsThoughtSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkedAsThoughtSEImplToJson(
      this,
    );
  }
}

abstract class MarkedAsThoughtSE implements SourcedEvent {
  factory MarkedAsThoughtSE(final ID parent, final DateTime at) =
      _$MarkedAsThoughtSEImpl;

  factory MarkedAsThoughtSE.fromJson(Map<String, dynamic> json) =
      _$MarkedAsThoughtSEImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  @override
  @JsonKey(ignore: true)
  _$$MarkedAsThoughtSEImplCopyWith<_$MarkedAsThoughtSEImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedSEImplCopyWith<$Res>
    implements $SourcedEventCopyWith<$Res> {
  factory _$$CategoryChangedSEImplCopyWith(_$CategoryChangedSEImpl value,
          $Res Function(_$CategoryChangedSEImpl) then) =
      __$$CategoryChangedSEImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String category});
}

/// @nodoc
class __$$CategoryChangedSEImplCopyWithImpl<$Res>
    extends _$SourcedEventCopyWithImpl<$Res, _$CategoryChangedSEImpl>
    implements _$$CategoryChangedSEImplCopyWith<$Res> {
  __$$CategoryChangedSEImplCopyWithImpl(_$CategoryChangedSEImpl _value,
      $Res Function(_$CategoryChangedSEImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? category = null,
  }) {
    return _then(_$CategoryChangedSEImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryChangedSEImpl implements CategoryChangedSE {
  _$CategoryChangedSEImpl(this.parent, this.at, this.category,
      {final String? $type})
      : $type = $type ?? 'CategoryChangedSE';

  factory _$CategoryChangedSEImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryChangedSEImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;
  @override
  final String category;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEvent.CategoryChangedSE(parent: $parent, at: $at, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedSEImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedSEImplCopyWith<_$CategoryChangedSEImpl> get copyWith =>
      __$$CategoryChangedSEImplCopyWithImpl<_$CategoryChangedSEImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID parent, DateTime at) CreatedSE,
    required TResult Function(ID parent, DateTime at, String title)
        TitleChangedSE,
    required TResult Function(ID parent, DateTime at, String description)
        DescriptionChangedSE,
    required TResult Function(ID parent, DateTime at) MarkedAsThoughtSE,
    required TResult Function(ID parent, DateTime at, String category)
        CategoryChangedSE,
  }) {
    return CategoryChangedSE(parent, at, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID parent, DateTime at)? CreatedSE,
    TResult? Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult? Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult? Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult? Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
  }) {
    return CategoryChangedSE?.call(parent, at, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID parent, DateTime at)? CreatedSE,
    TResult Function(ID parent, DateTime at, String title)? TitleChangedSE,
    TResult Function(ID parent, DateTime at, String description)?
        DescriptionChangedSE,
    TResult Function(ID parent, DateTime at)? MarkedAsThoughtSE,
    TResult Function(ID parent, DateTime at, String category)?
        CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (CategoryChangedSE != null) {
      return CategoryChangedSE(parent, at, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSE value) CreatedSE,
    required TResult Function(TitleChangedSE value) TitleChangedSE,
    required TResult Function(DescriptionChangedSE value) DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSE value) MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSE value) CategoryChangedSE,
  }) {
    return CategoryChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSE value)? CreatedSE,
    TResult? Function(TitleChangedSE value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSE value)? CategoryChangedSE,
  }) {
    return CategoryChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSE value)? CreatedSE,
    TResult Function(TitleChangedSE value)? TitleChangedSE,
    TResult Function(DescriptionChangedSE value)? DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSE value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSE value)? CategoryChangedSE,
    required TResult orElse(),
  }) {
    if (CategoryChangedSE != null) {
      return CategoryChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryChangedSEImplToJson(
      this,
    );
  }
}

abstract class CategoryChangedSE implements SourcedEvent {
  factory CategoryChangedSE(
          final ID parent, final DateTime at, final String category) =
      _$CategoryChangedSEImpl;

  factory CategoryChangedSE.fromJson(Map<String, dynamic> json) =
      _$CategoryChangedSEImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryChangedSEImplCopyWith<_$CategoryChangedSEImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
