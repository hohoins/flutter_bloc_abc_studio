// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_selector_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleSelectorState {
  SampleSelectorData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleSelectorData data) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleSelectorData data)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleSelectorData data)? empty,
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

  /// Create a copy of SampleSelectorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleSelectorStateCopyWith<SampleSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleSelectorStateCopyWith<$Res> {
  factory $SampleSelectorStateCopyWith(
          SampleSelectorState value, $Res Function(SampleSelectorState) then) =
      _$SampleSelectorStateCopyWithImpl<$Res, SampleSelectorState>;
  @useResult
  $Res call({SampleSelectorData data});

  $SampleSelectorDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SampleSelectorStateCopyWithImpl<$Res, $Val extends SampleSelectorState>
    implements $SampleSelectorStateCopyWith<$Res> {
  _$SampleSelectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleSelectorState
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
              as SampleSelectorData,
    ) as $Val);
  }

  /// Create a copy of SampleSelectorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleSelectorDataCopyWith<$Res> get data {
    return $SampleSelectorDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $SampleSelectorStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SampleSelectorData data});

  @override
  $SampleSelectorDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$SampleSelectorStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleSelectorState
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
              as SampleSelectorData,
    ));
  }
}

/// @nodoc

class _$EmptyImpl extends Empty {
  const _$EmptyImpl(this.data) : super._();

  @override
  final SampleSelectorData data;

  @override
  String toString() {
    return 'SampleSelectorState.empty(data: $data)';
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

  /// Create a copy of SampleSelectorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleSelectorData data) empty,
  }) {
    return empty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleSelectorData data)? empty,
  }) {
    return empty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleSelectorData data)? empty,
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

abstract class Empty extends SampleSelectorState {
  const factory Empty(final SampleSelectorData data) = _$EmptyImpl;
  const Empty._() : super._();

  @override
  SampleSelectorData get data;

  /// Create a copy of SampleSelectorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SampleSelectorData {
  int get countA => throw _privateConstructorUsedError;
  int get countB => throw _privateConstructorUsedError;
  int get countC => throw _privateConstructorUsedError;

  /// Create a copy of SampleSelectorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleSelectorDataCopyWith<SampleSelectorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleSelectorDataCopyWith<$Res> {
  factory $SampleSelectorDataCopyWith(
          SampleSelectorData value, $Res Function(SampleSelectorData) then) =
      _$SampleSelectorDataCopyWithImpl<$Res, SampleSelectorData>;
  @useResult
  $Res call({int countA, int countB, int countC});
}

/// @nodoc
class _$SampleSelectorDataCopyWithImpl<$Res, $Val extends SampleSelectorData>
    implements $SampleSelectorDataCopyWith<$Res> {
  _$SampleSelectorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleSelectorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countA = null,
    Object? countB = null,
    Object? countC = null,
  }) {
    return _then(_value.copyWith(
      countA: null == countA
          ? _value.countA
          : countA // ignore: cast_nullable_to_non_nullable
              as int,
      countB: null == countB
          ? _value.countB
          : countB // ignore: cast_nullable_to_non_nullable
              as int,
      countC: null == countC
          ? _value.countC
          : countC // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleSelectorDataImplCopyWith<$Res>
    implements $SampleSelectorDataCopyWith<$Res> {
  factory _$$SampleSelectorDataImplCopyWith(_$SampleSelectorDataImpl value,
          $Res Function(_$SampleSelectorDataImpl) then) =
      __$$SampleSelectorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int countA, int countB, int countC});
}

/// @nodoc
class __$$SampleSelectorDataImplCopyWithImpl<$Res>
    extends _$SampleSelectorDataCopyWithImpl<$Res, _$SampleSelectorDataImpl>
    implements _$$SampleSelectorDataImplCopyWith<$Res> {
  __$$SampleSelectorDataImplCopyWithImpl(_$SampleSelectorDataImpl _value,
      $Res Function(_$SampleSelectorDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleSelectorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countA = null,
    Object? countB = null,
    Object? countC = null,
  }) {
    return _then(_$SampleSelectorDataImpl(
      countA: null == countA
          ? _value.countA
          : countA // ignore: cast_nullable_to_non_nullable
              as int,
      countB: null == countB
          ? _value.countB
          : countB // ignore: cast_nullable_to_non_nullable
              as int,
      countC: null == countC
          ? _value.countC
          : countC // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SampleSelectorDataImpl implements _SampleSelectorData {
  const _$SampleSelectorDataImpl(
      {this.countA = 0, this.countB = 0, this.countC = 0});

  @override
  @JsonKey()
  final int countA;
  @override
  @JsonKey()
  final int countB;
  @override
  @JsonKey()
  final int countC;

  @override
  String toString() {
    return 'SampleSelectorData(countA: $countA, countB: $countB, countC: $countC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleSelectorDataImpl &&
            (identical(other.countA, countA) || other.countA == countA) &&
            (identical(other.countB, countB) || other.countB == countB) &&
            (identical(other.countC, countC) || other.countC == countC));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countA, countB, countC);

  /// Create a copy of SampleSelectorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleSelectorDataImplCopyWith<_$SampleSelectorDataImpl> get copyWith =>
      __$$SampleSelectorDataImplCopyWithImpl<_$SampleSelectorDataImpl>(
          this, _$identity);
}

abstract class _SampleSelectorData implements SampleSelectorData {
  const factory _SampleSelectorData(
      {final int countA,
      final int countB,
      final int countC}) = _$SampleSelectorDataImpl;

  @override
  int get countA;
  @override
  int get countB;
  @override
  int get countC;

  /// Create a copy of SampleSelectorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SampleSelectorDataImplCopyWith<_$SampleSelectorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
