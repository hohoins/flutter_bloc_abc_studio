// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashState {
  SplashData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplashData data) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({SplashData data});

  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SplashData,
    ) as $Val);
  }

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SplashDataCopyWith<$Res> get data {
    return $SplashDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashData data});

  @override
  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EmptyImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SplashData,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl(this.data);

  @override
  final SplashData data;

  @override
  String toString() {
    return 'SplashState.empty(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplashData data) empty,
  }) {
    return empty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? empty,
  }) {
    return empty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements SplashState {
  const factory Empty(final SplashData data) = _$EmptyImpl;

  @override
  SplashData get data;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashData {
  String get sample => throw _privateConstructorUsedError;

  /// Create a copy of SplashData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashDataCopyWith<SplashData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashDataCopyWith<$Res> {
  factory $SplashDataCopyWith(
          SplashData value, $Res Function(SplashData) then) =
      _$SplashDataCopyWithImpl<$Res, SplashData>;
  @useResult
  $Res call({String sample});
}

/// @nodoc
class _$SplashDataCopyWithImpl<$Res, $Val extends SplashData>
    implements $SplashDataCopyWith<$Res> {
  _$SplashDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sample = null,
  }) {
    return _then(_value.copyWith(
      sample: null == sample
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashDataImplCopyWith<$Res>
    implements $SplashDataCopyWith<$Res> {
  factory _$$SplashDataImplCopyWith(
          _$SplashDataImpl value, $Res Function(_$SplashDataImpl) then) =
      __$$SplashDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sample});
}

/// @nodoc
class __$$SplashDataImplCopyWithImpl<$Res>
    extends _$SplashDataCopyWithImpl<$Res, _$SplashDataImpl>
    implements _$$SplashDataImplCopyWith<$Res> {
  __$$SplashDataImplCopyWithImpl(
      _$SplashDataImpl _value, $Res Function(_$SplashDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sample = null,
  }) {
    return _then(_$SplashDataImpl(
      sample: null == sample
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashDataImpl implements _SplashData {
  const _$SplashDataImpl({this.sample = ''});

  @override
  @JsonKey()
  final String sample;

  @override
  String toString() {
    return 'SplashData(sample: $sample)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashDataImpl &&
            (identical(other.sample, sample) || other.sample == sample));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sample);

  /// Create a copy of SplashData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashDataImplCopyWith<_$SplashDataImpl> get copyWith =>
      __$$SplashDataImplCopyWithImpl<_$SplashDataImpl>(this, _$identity);
}

abstract class _SplashData implements SplashData {
  const factory _SplashData({final String sample}) = _$SplashDataImpl;

  @override
  String get sample;

  /// Create a copy of SplashData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashDataImplCopyWith<_$SplashDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
