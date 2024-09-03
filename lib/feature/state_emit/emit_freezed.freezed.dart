// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emit_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmitFreezedState {
  int get counterA => throw _privateConstructorUsedError;
  int get counterB => throw _privateConstructorUsedError;
  int get counterC => throw _privateConstructorUsedError;

  /// Create a copy of EmitFreezedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmitFreezedStateCopyWith<EmitFreezedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmitFreezedStateCopyWith<$Res> {
  factory $EmitFreezedStateCopyWith(
          EmitFreezedState value, $Res Function(EmitFreezedState) then) =
      _$EmitFreezedStateCopyWithImpl<$Res, EmitFreezedState>;
  @useResult
  $Res call({int counterA, int counterB, int counterC});
}

/// @nodoc
class _$EmitFreezedStateCopyWithImpl<$Res, $Val extends EmitFreezedState>
    implements $EmitFreezedStateCopyWith<$Res> {
  _$EmitFreezedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmitFreezedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmitFreezedStateImplCopyWith<$Res>
    implements $EmitFreezedStateCopyWith<$Res> {
  factory _$$EmitFreezedStateImplCopyWith(_$EmitFreezedStateImpl value,
          $Res Function(_$EmitFreezedStateImpl) then) =
      __$$EmitFreezedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counterA, int counterB, int counterC});
}

/// @nodoc
class __$$EmitFreezedStateImplCopyWithImpl<$Res>
    extends _$EmitFreezedStateCopyWithImpl<$Res, _$EmitFreezedStateImpl>
    implements _$$EmitFreezedStateImplCopyWith<$Res> {
  __$$EmitFreezedStateImplCopyWithImpl(_$EmitFreezedStateImpl _value,
      $Res Function(_$EmitFreezedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmitFreezedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
  }) {
    return _then(_$EmitFreezedStateImpl(
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
    ));
  }
}

/// @nodoc

class _$EmitFreezedStateImpl implements _EmitFreezedState {
  const _$EmitFreezedStateImpl(
      {required this.counterA, required this.counterB, required this.counterC});

  @override
  final int counterA;
  @override
  final int counterB;
  @override
  final int counterC;

  @override
  String toString() {
    return 'EmitFreezedState(counterA: $counterA, counterB: $counterB, counterC: $counterC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitFreezedStateImpl &&
            (identical(other.counterA, counterA) ||
                other.counterA == counterA) &&
            (identical(other.counterB, counterB) ||
                other.counterB == counterB) &&
            (identical(other.counterC, counterC) ||
                other.counterC == counterC));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counterA, counterB, counterC);

  /// Create a copy of EmitFreezedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitFreezedStateImplCopyWith<_$EmitFreezedStateImpl> get copyWith =>
      __$$EmitFreezedStateImplCopyWithImpl<_$EmitFreezedStateImpl>(
          this, _$identity);
}

abstract class _EmitFreezedState implements EmitFreezedState {
  const factory _EmitFreezedState(
      {required final int counterA,
      required final int counterB,
      required final int counterC}) = _$EmitFreezedStateImpl;

  @override
  int get counterA;
  @override
  int get counterB;
  @override
  int get counterC;

  /// Create a copy of EmitFreezedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmitFreezedStateImplCopyWith<_$EmitFreezedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
