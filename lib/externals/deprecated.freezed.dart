// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deprecated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourcedEventDeprecated _$SourcedEventDeprecatedFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'CreatedSE':
      return CreatedSEDeprecated.fromJson(json);
    case 'TitleChangedSE':
      return TitleChangedSEDeprecated.fromJson(json);
    case 'DescriptionChangedSE':
      return DescriptionChangedSEDeprecated.fromJson(json);
    case 'MarkedAsThoughtSE':
      return MarkedAsThoughtSEDeprecated.fromJson(json);
    case 'CategoryChangedSE':
      return CategoryChangedSEDeprecated.fromJson(json);
    case 'StatusChangedSE':
      return StatusChangedSEDeprecated.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'SourcedEventDeprecated',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SourcedEventDeprecated {
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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcedEventDeprecatedCopyWith<SourcedEventDeprecated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcedEventDeprecatedCopyWith<$Res> {
  factory $SourcedEventDeprecatedCopyWith(SourcedEventDeprecated value,
          $Res Function(SourcedEventDeprecated) then) =
      _$SourcedEventDeprecatedCopyWithImpl<$Res, SourcedEventDeprecated>;
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class _$SourcedEventDeprecatedCopyWithImpl<$Res,
        $Val extends SourcedEventDeprecated>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  _$SourcedEventDeprecatedCopyWithImpl(this._value, this._then);

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
abstract class _$$CreatedSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$CreatedSEDeprecatedImplCopyWith(_$CreatedSEDeprecatedImpl value,
          $Res Function(_$CreatedSEDeprecatedImpl) then) =
      __$$CreatedSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class __$$CreatedSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$CreatedSEDeprecatedImpl>
    implements _$$CreatedSEDeprecatedImplCopyWith<$Res> {
  __$$CreatedSEDeprecatedImplCopyWithImpl(_$CreatedSEDeprecatedImpl _value,
      $Res Function(_$CreatedSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
  }) {
    return _then(_$CreatedSEDeprecatedImpl(
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
class _$CreatedSEDeprecatedImpl implements CreatedSEDeprecated {
  _$CreatedSEDeprecatedImpl(this.parent, this.at, {final String? $type})
      : $type = $type ?? 'CreatedSE';

  factory _$CreatedSEDeprecatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedSEDeprecatedImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEventDeprecated.CreatedSE(parent: $parent, at: $at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedSEDeprecatedImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedSEDeprecatedImplCopyWith<_$CreatedSEDeprecatedImpl> get copyWith =>
      __$$CreatedSEDeprecatedImplCopyWithImpl<_$CreatedSEDeprecatedImpl>(
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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return CreatedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return CreatedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (CreatedSE != null) {
      return CreatedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class CreatedSEDeprecated implements SourcedEventDeprecated {
  factory CreatedSEDeprecated(final ID parent, final DateTime at) =
      _$CreatedSEDeprecatedImpl;

  factory CreatedSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$CreatedSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  @override
  @JsonKey(ignore: true)
  _$$CreatedSEDeprecatedImplCopyWith<_$CreatedSEDeprecatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$TitleChangedSEDeprecatedImplCopyWith(
          _$TitleChangedSEDeprecatedImpl value,
          $Res Function(_$TitleChangedSEDeprecatedImpl) then) =
      __$$TitleChangedSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String title});
}

/// @nodoc
class __$$TitleChangedSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$TitleChangedSEDeprecatedImpl>
    implements _$$TitleChangedSEDeprecatedImplCopyWith<$Res> {
  __$$TitleChangedSEDeprecatedImplCopyWithImpl(
      _$TitleChangedSEDeprecatedImpl _value,
      $Res Function(_$TitleChangedSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? title = null,
  }) {
    return _then(_$TitleChangedSEDeprecatedImpl(
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
class _$TitleChangedSEDeprecatedImpl implements TitleChangedSEDeprecated {
  _$TitleChangedSEDeprecatedImpl(this.parent, this.at, this.title,
      {final String? $type})
      : $type = $type ?? 'TitleChangedSE';

  factory _$TitleChangedSEDeprecatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleChangedSEDeprecatedImplFromJson(json);

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
    return 'SourcedEventDeprecated.TitleChangedSE(parent: $parent, at: $at, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedSEDeprecatedImpl &&
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
  _$$TitleChangedSEDeprecatedImplCopyWith<_$TitleChangedSEDeprecatedImpl>
      get copyWith => __$$TitleChangedSEDeprecatedImplCopyWithImpl<
          _$TitleChangedSEDeprecatedImpl>(this, _$identity);

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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return TitleChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return TitleChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (TitleChangedSE != null) {
      return TitleChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleChangedSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class TitleChangedSEDeprecated implements SourcedEventDeprecated {
  factory TitleChangedSEDeprecated(
          final ID parent, final DateTime at, final String title) =
      _$TitleChangedSEDeprecatedImpl;

  factory TitleChangedSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$TitleChangedSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TitleChangedSEDeprecatedImplCopyWith<_$TitleChangedSEDeprecatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$DescriptionChangedSEDeprecatedImplCopyWith(
          _$DescriptionChangedSEDeprecatedImpl value,
          $Res Function(_$DescriptionChangedSEDeprecatedImpl) then) =
      __$$DescriptionChangedSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String description});
}

/// @nodoc
class __$$DescriptionChangedSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$DescriptionChangedSEDeprecatedImpl>
    implements _$$DescriptionChangedSEDeprecatedImplCopyWith<$Res> {
  __$$DescriptionChangedSEDeprecatedImplCopyWithImpl(
      _$DescriptionChangedSEDeprecatedImpl _value,
      $Res Function(_$DescriptionChangedSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? description = null,
  }) {
    return _then(_$DescriptionChangedSEDeprecatedImpl(
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
class _$DescriptionChangedSEDeprecatedImpl
    implements DescriptionChangedSEDeprecated {
  _$DescriptionChangedSEDeprecatedImpl(this.parent, this.at, this.description,
      {final String? $type})
      : $type = $type ?? 'DescriptionChangedSE';

  factory _$DescriptionChangedSEDeprecatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DescriptionChangedSEDeprecatedImplFromJson(json);

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
    return 'SourcedEventDeprecated.DescriptionChangedSE(parent: $parent, at: $at, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedSEDeprecatedImpl &&
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
  _$$DescriptionChangedSEDeprecatedImplCopyWith<
          _$DescriptionChangedSEDeprecatedImpl>
      get copyWith => __$$DescriptionChangedSEDeprecatedImplCopyWithImpl<
          _$DescriptionChangedSEDeprecatedImpl>(this, _$identity);

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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return DescriptionChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return DescriptionChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (DescriptionChangedSE != null) {
      return DescriptionChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DescriptionChangedSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class DescriptionChangedSEDeprecated
    implements SourcedEventDeprecated {
  factory DescriptionChangedSEDeprecated(
          final ID parent, final DateTime at, final String description) =
      _$DescriptionChangedSEDeprecatedImpl;

  factory DescriptionChangedSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$DescriptionChangedSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$DescriptionChangedSEDeprecatedImplCopyWith<
          _$DescriptionChangedSEDeprecatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkedAsThoughtSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$MarkedAsThoughtSEDeprecatedImplCopyWith(
          _$MarkedAsThoughtSEDeprecatedImpl value,
          $Res Function(_$MarkedAsThoughtSEDeprecatedImpl) then) =
      __$$MarkedAsThoughtSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at});
}

/// @nodoc
class __$$MarkedAsThoughtSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$MarkedAsThoughtSEDeprecatedImpl>
    implements _$$MarkedAsThoughtSEDeprecatedImplCopyWith<$Res> {
  __$$MarkedAsThoughtSEDeprecatedImplCopyWithImpl(
      _$MarkedAsThoughtSEDeprecatedImpl _value,
      $Res Function(_$MarkedAsThoughtSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
  }) {
    return _then(_$MarkedAsThoughtSEDeprecatedImpl(
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
class _$MarkedAsThoughtSEDeprecatedImpl implements MarkedAsThoughtSEDeprecated {
  _$MarkedAsThoughtSEDeprecatedImpl(this.parent, this.at, {final String? $type})
      : $type = $type ?? 'MarkedAsThoughtSE';

  factory _$MarkedAsThoughtSEDeprecatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MarkedAsThoughtSEDeprecatedImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEventDeprecated.MarkedAsThoughtSE(parent: $parent, at: $at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkedAsThoughtSEDeprecatedImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkedAsThoughtSEDeprecatedImplCopyWith<_$MarkedAsThoughtSEDeprecatedImpl>
      get copyWith => __$$MarkedAsThoughtSEDeprecatedImplCopyWithImpl<
          _$MarkedAsThoughtSEDeprecatedImpl>(this, _$identity);

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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return MarkedAsThoughtSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return MarkedAsThoughtSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (MarkedAsThoughtSE != null) {
      return MarkedAsThoughtSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkedAsThoughtSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class MarkedAsThoughtSEDeprecated implements SourcedEventDeprecated {
  factory MarkedAsThoughtSEDeprecated(final ID parent, final DateTime at) =
      _$MarkedAsThoughtSEDeprecatedImpl;

  factory MarkedAsThoughtSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$MarkedAsThoughtSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  @override
  @JsonKey(ignore: true)
  _$$MarkedAsThoughtSEDeprecatedImplCopyWith<_$MarkedAsThoughtSEDeprecatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$CategoryChangedSEDeprecatedImplCopyWith(
          _$CategoryChangedSEDeprecatedImpl value,
          $Res Function(_$CategoryChangedSEDeprecatedImpl) then) =
      __$$CategoryChangedSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, String category});
}

/// @nodoc
class __$$CategoryChangedSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$CategoryChangedSEDeprecatedImpl>
    implements _$$CategoryChangedSEDeprecatedImplCopyWith<$Res> {
  __$$CategoryChangedSEDeprecatedImplCopyWithImpl(
      _$CategoryChangedSEDeprecatedImpl _value,
      $Res Function(_$CategoryChangedSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? category = null,
  }) {
    return _then(_$CategoryChangedSEDeprecatedImpl(
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
class _$CategoryChangedSEDeprecatedImpl implements CategoryChangedSEDeprecated {
  _$CategoryChangedSEDeprecatedImpl(this.parent, this.at, this.category,
      {final String? $type})
      : $type = $type ?? 'CategoryChangedSE';

  factory _$CategoryChangedSEDeprecatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryChangedSEDeprecatedImplFromJson(json);

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
    return 'SourcedEventDeprecated.CategoryChangedSE(parent: $parent, at: $at, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedSEDeprecatedImpl &&
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
  _$$CategoryChangedSEDeprecatedImplCopyWith<_$CategoryChangedSEDeprecatedImpl>
      get copyWith => __$$CategoryChangedSEDeprecatedImplCopyWithImpl<
          _$CategoryChangedSEDeprecatedImpl>(this, _$identity);

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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
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
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return CategoryChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return CategoryChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (CategoryChangedSE != null) {
      return CategoryChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryChangedSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class CategoryChangedSEDeprecated implements SourcedEventDeprecated {
  factory CategoryChangedSEDeprecated(
          final ID parent, final DateTime at, final String category) =
      _$CategoryChangedSEDeprecatedImpl;

  factory CategoryChangedSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$CategoryChangedSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryChangedSEDeprecatedImplCopyWith<_$CategoryChangedSEDeprecatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusChangedSEDeprecatedImplCopyWith<$Res>
    implements $SourcedEventDeprecatedCopyWith<$Res> {
  factory _$$StatusChangedSEDeprecatedImplCopyWith(
          _$StatusChangedSEDeprecatedImpl value,
          $Res Function(_$StatusChangedSEDeprecatedImpl) then) =
      __$$StatusChangedSEDeprecatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ID parent, DateTime at, AggregateStatus status});
}

/// @nodoc
class __$$StatusChangedSEDeprecatedImplCopyWithImpl<$Res>
    extends _$SourcedEventDeprecatedCopyWithImpl<$Res,
        _$StatusChangedSEDeprecatedImpl>
    implements _$$StatusChangedSEDeprecatedImplCopyWith<$Res> {
  __$$StatusChangedSEDeprecatedImplCopyWithImpl(
      _$StatusChangedSEDeprecatedImpl _value,
      $Res Function(_$StatusChangedSEDeprecatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? at = null,
    Object? status = null,
  }) {
    return _then(_$StatusChangedSEDeprecatedImpl(
      null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ID,
      null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AggregateStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusChangedSEDeprecatedImpl implements StatusChangedSEDeprecated {
  _$StatusChangedSEDeprecatedImpl(this.parent, this.at, this.status,
      {final String? $type})
      : $type = $type ?? 'StatusChangedSE';

  factory _$StatusChangedSEDeprecatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusChangedSEDeprecatedImplFromJson(json);

  @override
  final ID parent;
  @override
  final DateTime at;
  @override
  final AggregateStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourcedEventDeprecated.StatusChangedSE(parent: $parent, at: $at, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChangedSEDeprecatedImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, at, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusChangedSEDeprecatedImplCopyWith<_$StatusChangedSEDeprecatedImpl>
      get copyWith => __$$StatusChangedSEDeprecatedImplCopyWithImpl<
          _$StatusChangedSEDeprecatedImpl>(this, _$identity);

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
    required TResult Function(ID parent, DateTime at, AggregateStatus status)
        StatusChangedSE,
  }) {
    return StatusChangedSE(parent, at, status);
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
    TResult? Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
  }) {
    return StatusChangedSE?.call(parent, at, status);
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
    TResult Function(ID parent, DateTime at, AggregateStatus status)?
        StatusChangedSE,
    required TResult orElse(),
  }) {
    if (StatusChangedSE != null) {
      return StatusChangedSE(parent, at, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedSEDeprecated value) CreatedSE,
    required TResult Function(TitleChangedSEDeprecated value) TitleChangedSE,
    required TResult Function(DescriptionChangedSEDeprecated value)
        DescriptionChangedSE,
    required TResult Function(MarkedAsThoughtSEDeprecated value)
        MarkedAsThoughtSE,
    required TResult Function(CategoryChangedSEDeprecated value)
        CategoryChangedSE,
    required TResult Function(StatusChangedSEDeprecated value) StatusChangedSE,
  }) {
    return StatusChangedSE(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedSEDeprecated value)? CreatedSE,
    TResult? Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult? Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult? Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult? Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult? Function(StatusChangedSEDeprecated value)? StatusChangedSE,
  }) {
    return StatusChangedSE?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedSEDeprecated value)? CreatedSE,
    TResult Function(TitleChangedSEDeprecated value)? TitleChangedSE,
    TResult Function(DescriptionChangedSEDeprecated value)?
        DescriptionChangedSE,
    TResult Function(MarkedAsThoughtSEDeprecated value)? MarkedAsThoughtSE,
    TResult Function(CategoryChangedSEDeprecated value)? CategoryChangedSE,
    TResult Function(StatusChangedSEDeprecated value)? StatusChangedSE,
    required TResult orElse(),
  }) {
    if (StatusChangedSE != null) {
      return StatusChangedSE(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusChangedSEDeprecatedImplToJson(
      this,
    );
  }
}

abstract class StatusChangedSEDeprecated implements SourcedEventDeprecated {
  factory StatusChangedSEDeprecated(
          final ID parent, final DateTime at, final AggregateStatus status) =
      _$StatusChangedSEDeprecatedImpl;

  factory StatusChangedSEDeprecated.fromJson(Map<String, dynamic> json) =
      _$StatusChangedSEDeprecatedImpl.fromJson;

  @override
  ID get parent;
  @override
  DateTime get at;
  AggregateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$StatusChangedSEDeprecatedImplCopyWith<_$StatusChangedSEDeprecatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
