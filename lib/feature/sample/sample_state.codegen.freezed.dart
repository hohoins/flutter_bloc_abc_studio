// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleState {
  SampleData get data => throw _privateConstructorUsedError;
}

/// @nodoc

class _$EmptyImpl extends Empty {
  const _$EmptyImpl(this.data) : super._();

  @override
  final SampleData data;

  @override
  String toString() {
    return 'SampleState.empty(data: $data)';
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
}

abstract class Empty extends SampleState {
  const factory Empty(final SampleData data) = _$EmptyImpl;
  const Empty._() : super._();

  @override
  SampleData get data;
}

/// @nodoc
mixin _$SampleData {
  int get counter => throw _privateConstructorUsedError;

  /// Create a copy of SampleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleDataCopyWith<SampleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleDataCopyWith<$Res> {
  factory $SampleDataCopyWith(
          SampleData value, $Res Function(SampleData) then) =
      _$SampleDataCopyWithImpl<$Res, SampleData>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$SampleDataCopyWithImpl<$Res, $Val extends SampleData>
    implements $SampleDataCopyWith<$Res> {
  _$SampleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleDataImplCopyWith<$Res>
    implements $SampleDataCopyWith<$Res> {
  factory _$$SampleDataImplCopyWith(
          _$SampleDataImpl value, $Res Function(_$SampleDataImpl) then) =
      __$$SampleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$SampleDataImplCopyWithImpl<$Res>
    extends _$SampleDataCopyWithImpl<$Res, _$SampleDataImpl>
    implements _$$SampleDataImplCopyWith<$Res> {
  __$$SampleDataImplCopyWithImpl(
      _$SampleDataImpl _value, $Res Function(_$SampleDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$SampleDataImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SampleDataImpl implements _SampleData {
  const _$SampleDataImpl({this.counter = 0});

  @override
  @JsonKey()
  final int counter;

  @override
  String toString() {
    return 'SampleData(counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleDataImpl &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  /// Create a copy of SampleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleDataImplCopyWith<_$SampleDataImpl> get copyWith =>
      __$$SampleDataImplCopyWithImpl<_$SampleDataImpl>(this, _$identity);
}

abstract class _SampleData implements SampleData {
  const factory _SampleData({final int counter}) = _$SampleDataImpl;

  @override
  int get counter;

  /// Create a copy of SampleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SampleDataImplCopyWith<_$SampleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
