// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiState {
  ApiStatus get status => throw _privateConstructorUsedError;
  String get serverData => throw _privateConstructorUsedError;
  int get counterA => throw _privateConstructorUsedError;
  int get counterB => throw _privateConstructorUsedError;
  int get counterC => throw _privateConstructorUsedError;
  bool? get isHighlight => throw _privateConstructorUsedError;

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiStateCopyWith<ApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res, ApiState>;
  @useResult
  $Res call(
      {ApiStatus status,
      String serverData,
      int counterA,
      int counterB,
      int counterC,
      bool? isHighlight});
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res, $Val extends ApiState>
    implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? serverData = null,
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
    Object? isHighlight = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      serverData: null == serverData
          ? _value.serverData
          : serverData // ignore: cast_nullable_to_non_nullable
              as String,
      counterA: null == counterA
          ? _value.counterA
          : counterA // ignore: cast_nullable_to_non_nullable
              as int,
      counterB: null == counterB
          ? _value.counterB
          : counterB // ignore: cast_nullable_to_non_nullable
              as int,
      counterC: null == counterC
          ? _value.counterC
          : counterC // ignore: cast_nullable_to_non_nullable
              as int,
      isHighlight: freezed == isHighlight
          ? _value.isHighlight
          : isHighlight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiStateImplCopyWith<$Res>
    implements $ApiStateCopyWith<$Res> {
  factory _$$ApiStateImplCopyWith(
          _$ApiStateImpl value, $Res Function(_$ApiStateImpl) then) =
      __$$ApiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus status,
      String serverData,
      int counterA,
      int counterB,
      int counterC,
      bool? isHighlight});
}

/// @nodoc
class __$$ApiStateImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$ApiStateImpl>
    implements _$$ApiStateImplCopyWith<$Res> {
  __$$ApiStateImplCopyWithImpl(
      _$ApiStateImpl _value, $Res Function(_$ApiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? serverData = null,
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
    Object? isHighlight = freezed,
  }) {
    return _then(_$ApiStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      serverData: null == serverData
          ? _value.serverData
          : serverData // ignore: cast_nullable_to_non_nullable
              as String,
      counterA: null == counterA
          ? _value.counterA
          : counterA // ignore: cast_nullable_to_non_nullable
              as int,
      counterB: null == counterB
          ? _value.counterB
          : counterB // ignore: cast_nullable_to_non_nullable
              as int,
      counterC: null == counterC
          ? _value.counterC
          : counterC // ignore: cast_nullable_to_non_nullable
              as int,
      isHighlight: freezed == isHighlight
          ? _value.isHighlight
          : isHighlight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ApiStateImpl implements _ApiState {
  const _$ApiStateImpl(
      {this.status = ApiStatus.initial,
      this.serverData = '',
      this.counterA = 0,
      this.counterB = 0,
      this.counterC = 0,
      this.isHighlight = false});

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final String serverData;
  @override
  @JsonKey()
  final int counterA;
  @override
  @JsonKey()
  final int counterB;
  @override
  @JsonKey()
  final int counterC;
  @override
  @JsonKey()
  final bool? isHighlight;

  @override
  String toString() {
    return 'ApiState(status: $status, serverData: $serverData, counterA: $counterA, counterB: $counterB, counterC: $counterC, isHighlight: $isHighlight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serverData, serverData) ||
                other.serverData == serverData) &&
            (identical(other.counterA, counterA) ||
                other.counterA == counterA) &&
            (identical(other.counterB, counterB) ||
                other.counterB == counterB) &&
            (identical(other.counterC, counterC) ||
                other.counterC == counterC) &&
            (identical(other.isHighlight, isHighlight) ||
                other.isHighlight == isHighlight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, serverData, counterA,
      counterB, counterC, isHighlight);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStateImplCopyWith<_$ApiStateImpl> get copyWith =>
      __$$ApiStateImplCopyWithImpl<_$ApiStateImpl>(this, _$identity);
}

abstract class _ApiState implements ApiState {
  const factory _ApiState(
      {final ApiStatus status,
      final String serverData,
      final int counterA,
      final int counterB,
      final int counterC,
      final bool? isHighlight}) = _$ApiStateImpl;

  @override
  ApiStatus get status;
  @override
  String get serverData;
  @override
  int get counterA;
  @override
  int get counterB;
  @override
  int get counterC;
  @override
  bool? get isHighlight;

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiStateImplCopyWith<_$ApiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
