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

TestingResults _$TestingResultsFromJson(Map<String, dynamic> json) {
  return _TestingResults.fromJson(json);
}

/// @nodoc
mixin _$TestingResults {
  List<Screenshot> get screenshots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestingResultsCopyWith<TestingResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingResultsCopyWith<$Res> {
  factory $TestingResultsCopyWith(
          TestingResults value, $Res Function(TestingResults) then) =
      _$TestingResultsCopyWithImpl<$Res, TestingResults>;
  @useResult
  $Res call({List<Screenshot> screenshots});
}

/// @nodoc
class _$TestingResultsCopyWithImpl<$Res, $Val extends TestingResults>
    implements $TestingResultsCopyWith<$Res> {
  _$TestingResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshots = null,
  }) {
    return _then(_value.copyWith(
      screenshots: null == screenshots
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestingResultsImplCopyWith<$Res>
    implements $TestingResultsCopyWith<$Res> {
  factory _$$TestingResultsImplCopyWith(_$TestingResultsImpl value,
          $Res Function(_$TestingResultsImpl) then) =
      __$$TestingResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Screenshot> screenshots});
}

/// @nodoc
class __$$TestingResultsImplCopyWithImpl<$Res>
    extends _$TestingResultsCopyWithImpl<$Res, _$TestingResultsImpl>
    implements _$$TestingResultsImplCopyWith<$Res> {
  __$$TestingResultsImplCopyWithImpl(
      _$TestingResultsImpl _value, $Res Function(_$TestingResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshots = null,
  }) {
    return _then(_$TestingResultsImpl(
      screenshots: null == screenshots
          ? _value._screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestingResultsImpl implements _TestingResults {
  _$TestingResultsImpl({required final List<Screenshot> screenshots})
      : _screenshots = screenshots;

  factory _$TestingResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestingResultsImplFromJson(json);

  final List<Screenshot> _screenshots;
  @override
  List<Screenshot> get screenshots {
    if (_screenshots is EqualUnmodifiableListView) return _screenshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screenshots);
  }

  @override
  String toString() {
    return 'TestingResults(screenshots: $screenshots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestingResultsImpl &&
            const DeepCollectionEquality()
                .equals(other._screenshots, _screenshots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_screenshots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestingResultsImplCopyWith<_$TestingResultsImpl> get copyWith =>
      __$$TestingResultsImplCopyWithImpl<_$TestingResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestingResultsImplToJson(
      this,
    );
  }
}

abstract class _TestingResults implements TestingResults {
  factory _TestingResults({required final List<Screenshot> screenshots}) =
      _$TestingResultsImpl;

  factory _TestingResults.fromJson(Map<String, dynamic> json) =
      _$TestingResultsImpl.fromJson;

  @override
  List<Screenshot> get screenshots;
  @override
  @JsonKey(ignore: true)
  _$$TestingResultsImplCopyWith<_$TestingResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Screenshot _$ScreenshotFromJson(Map<String, dynamic> json) {
  return _Screenshot.fromJson(json);
}

/// @nodoc
mixin _$Screenshot {
  String get name => throw _privateConstructorUsedError;
  List<int> get bytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenshotCopyWith<Screenshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotCopyWith<$Res> {
  factory $ScreenshotCopyWith(
          Screenshot value, $Res Function(Screenshot) then) =
      _$ScreenshotCopyWithImpl<$Res, Screenshot>;
  @useResult
  $Res call({String name, List<int> bytes});
}

/// @nodoc
class _$ScreenshotCopyWithImpl<$Res, $Val extends Screenshot>
    implements $ScreenshotCopyWith<$Res> {
  _$ScreenshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenshotImplCopyWith<$Res>
    implements $ScreenshotCopyWith<$Res> {
  factory _$$ScreenshotImplCopyWith(
          _$ScreenshotImpl value, $Res Function(_$ScreenshotImpl) then) =
      __$$ScreenshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<int> bytes});
}

/// @nodoc
class __$$ScreenshotImplCopyWithImpl<$Res>
    extends _$ScreenshotCopyWithImpl<$Res, _$ScreenshotImpl>
    implements _$$ScreenshotImplCopyWith<$Res> {
  __$$ScreenshotImplCopyWithImpl(
      _$ScreenshotImpl _value, $Res Function(_$ScreenshotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytes = null,
  }) {
    return _then(_$ScreenshotImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenshotImpl implements _Screenshot {
  _$ScreenshotImpl({required this.name, required final List<int> bytes})
      : _bytes = bytes;

  factory _$ScreenshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenshotImplFromJson(json);

  @override
  final String name;
  final List<int> _bytes;
  @override
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  @override
  String toString() {
    return 'Screenshot(name: $name, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenshotImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_bytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenshotImplCopyWith<_$ScreenshotImpl> get copyWith =>
      __$$ScreenshotImplCopyWithImpl<_$ScreenshotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenshotImplToJson(
      this,
    );
  }
}

abstract class _Screenshot implements Screenshot {
  factory _Screenshot(
      {required final String name,
      required final List<int> bytes}) = _$ScreenshotImpl;

  factory _Screenshot.fromJson(Map<String, dynamic> json) =
      _$ScreenshotImpl.fromJson;

  @override
  String get name;
  @override
  List<int> get bytes;
  @override
  @JsonKey(ignore: true)
  _$$ScreenshotImplCopyWith<_$ScreenshotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
