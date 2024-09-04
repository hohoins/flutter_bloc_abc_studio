// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneTimeState {
  OneTimeData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneTimeStateCopyWith<OneTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTimeStateCopyWith<$Res> {
  factory $OneTimeStateCopyWith(
          OneTimeState value, $Res Function(OneTimeState) then) =
      _$OneTimeStateCopyWithImpl<$Res, OneTimeState>;
  @useResult
  $Res call({OneTimeData data});

  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OneTimeStateCopyWithImpl<$Res, $Val extends OneTimeState>
    implements $OneTimeStateCopyWith<$Res> {
  _$OneTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneTimeState
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
              as OneTimeData,
    ) as $Val);
  }

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OneTimeDataCopyWith<$Res> get data {
    return $OneTimeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
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
              as OneTimeData,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl(this.data);

  @override
  final OneTimeData data;

  @override
  String toString() {
    return 'OneTimeState.empty(data: $data)';
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

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return empty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return empty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
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
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements OneTimeState {
  const factory Empty(final OneTimeData data) = _$EmptyImpl;

  @override
  OneTimeData get data;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSnackBarImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$ShowSnackBarImplCopyWith(
          _$ShowSnackBarImpl value, $Res Function(_$ShowSnackBarImpl) then) =
      __$$ShowSnackBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowSnackBarImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$ShowSnackBarImpl>
    implements _$$ShowSnackBarImplCopyWith<$Res> {
  __$$ShowSnackBarImplCopyWithImpl(
      _$ShowSnackBarImpl _value, $Res Function(_$ShowSnackBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowSnackBarImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OneTimeData,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarImpl implements ShowSnackBar {
  const _$ShowSnackBarImpl(this.data);

  @override
  final OneTimeData data;

  @override
  String toString() {
    return 'OneTimeState.showSnackBar(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      __$$ShowSnackBarImplCopyWithImpl<_$ShowSnackBarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return showSnackBar(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return showSnackBar?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar implements OneTimeState {
  const factory ShowSnackBar(final OneTimeData data) = _$ShowSnackBarImpl;

  @override
  OneTimeData get data;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDialogImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$ShowDialogImplCopyWith(
          _$ShowDialogImpl value, $Res Function(_$ShowDialogImpl) then) =
      __$$ShowDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data, String dialogMessage});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowDialogImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$ShowDialogImpl>
    implements _$$ShowDialogImplCopyWith<$Res> {
  __$$ShowDialogImplCopyWithImpl(
      _$ShowDialogImpl _value, $Res Function(_$ShowDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dialogMessage = null,
  }) {
    return _then(_$ShowDialogImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OneTimeData,
      null == dialogMessage
          ? _value.dialogMessage
          : dialogMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowDialogImpl implements ShowDialog {
  const _$ShowDialogImpl(this.data, this.dialogMessage);

  @override
  final OneTimeData data;
  @override
  final String dialogMessage;

  @override
  String toString() {
    return 'OneTimeState.showDialog(data: $data, dialogMessage: $dialogMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialogImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dialogMessage, dialogMessage) ||
                other.dialogMessage == dialogMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, dialogMessage);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      __$$ShowDialogImplCopyWithImpl<_$ShowDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return showDialog(data, dialogMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return showDialog?.call(data, dialogMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(data, dialogMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class ShowDialog implements OneTimeState {
  const factory ShowDialog(final OneTimeData data, final String dialogMessage) =
      _$ShowDialogImpl;

  @override
  OneTimeData get data;
  String get dialogMessage;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowErrorDialogImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$ShowErrorDialogImplCopyWith(_$ShowErrorDialogImpl value,
          $Res Function(_$ShowErrorDialogImpl) then) =
      __$$ShowErrorDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data, int errorCode, String errorMessage});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowErrorDialogImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$ShowErrorDialogImpl>
    implements _$$ShowErrorDialogImplCopyWith<$Res> {
  __$$ShowErrorDialogImplCopyWithImpl(
      _$ShowErrorDialogImpl _value, $Res Function(_$ShowErrorDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ShowErrorDialogImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OneTimeData,
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorDialogImpl implements ShowErrorDialog {
  const _$ShowErrorDialogImpl(this.data, this.errorCode, this.errorMessage);

  @override
  final OneTimeData data;
  @override
  final int errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OneTimeState.showErrorDialog(data: $data, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorDialogImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, errorCode, errorMessage);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      __$$ShowErrorDialogImplCopyWithImpl<_$ShowErrorDialogImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return showErrorDialog(data, errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return showErrorDialog?.call(data, errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(data, errorCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return showErrorDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return showErrorDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(this);
    }
    return orElse();
  }
}

abstract class ShowErrorDialog implements OneTimeState {
  const factory ShowErrorDialog(final OneTimeData data, final int errorCode,
      final String errorMessage) = _$ShowErrorDialogImpl;

  @override
  OneTimeData get data;
  int get errorCode;
  String get errorMessage;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToPrevPageImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$GoToPrevPageImplCopyWith(
          _$GoToPrevPageImpl value, $Res Function(_$GoToPrevPageImpl) then) =
      __$$GoToPrevPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GoToPrevPageImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$GoToPrevPageImpl>
    implements _$$GoToPrevPageImplCopyWith<$Res> {
  __$$GoToPrevPageImplCopyWithImpl(
      _$GoToPrevPageImpl _value, $Res Function(_$GoToPrevPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GoToPrevPageImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OneTimeData,
    ));
  }
}

/// @nodoc

class _$GoToPrevPageImpl implements GoToPrevPage {
  const _$GoToPrevPageImpl(this.data);

  @override
  final OneTimeData data;

  @override
  String toString() {
    return 'OneTimeState.goToPrevPage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToPrevPageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToPrevPageImplCopyWith<_$GoToPrevPageImpl> get copyWith =>
      __$$GoToPrevPageImplCopyWithImpl<_$GoToPrevPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return goToPrevPage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return goToPrevPage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) {
    if (goToPrevPage != null) {
      return goToPrevPage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return goToPrevPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return goToPrevPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (goToPrevPage != null) {
      return goToPrevPage(this);
    }
    return orElse();
  }
}

abstract class GoToPrevPage implements OneTimeState {
  const factory GoToPrevPage(final OneTimeData data) = _$GoToPrevPageImpl;

  @override
  OneTimeData get data;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoToPrevPageImplCopyWith<_$GoToPrevPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToNextPageImplCopyWith<$Res>
    implements $OneTimeStateCopyWith<$Res> {
  factory _$$GoToNextPageImplCopyWith(
          _$GoToNextPageImpl value, $Res Function(_$GoToNextPageImpl) then) =
      __$$GoToNextPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeData data, int nextPageData});

  @override
  $OneTimeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GoToNextPageImplCopyWithImpl<$Res>
    extends _$OneTimeStateCopyWithImpl<$Res, _$GoToNextPageImpl>
    implements _$$GoToNextPageImplCopyWith<$Res> {
  __$$GoToNextPageImplCopyWithImpl(
      _$GoToNextPageImpl _value, $Res Function(_$GoToNextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextPageData = null,
  }) {
    return _then(_$GoToNextPageImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OneTimeData,
      null == nextPageData
          ? _value.nextPageData
          : nextPageData // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GoToNextPageImpl implements GoToNextPage {
  const _$GoToNextPageImpl(this.data, this.nextPageData);

  @override
  final OneTimeData data;
  @override
  final int nextPageData;

  @override
  String toString() {
    return 'OneTimeState.goToNextPage(data: $data, nextPageData: $nextPageData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToNextPageImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.nextPageData, nextPageData) ||
                other.nextPageData == nextPageData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, nextPageData);

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToNextPageImplCopyWith<_$GoToNextPageImpl> get copyWith =>
      __$$GoToNextPageImplCopyWithImpl<_$GoToNextPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneTimeData data) empty,
    required TResult Function(OneTimeData data) showSnackBar,
    required TResult Function(OneTimeData data, String dialogMessage)
        showDialog,
    required TResult Function(
            OneTimeData data, int errorCode, String errorMessage)
        showErrorDialog,
    required TResult Function(OneTimeData data) goToPrevPage,
    required TResult Function(OneTimeData data, int nextPageData) goToNextPage,
  }) {
    return goToNextPage(data, nextPageData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneTimeData data)? empty,
    TResult? Function(OneTimeData data)? showSnackBar,
    TResult? Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult? Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult? Function(OneTimeData data)? goToPrevPage,
    TResult? Function(OneTimeData data, int nextPageData)? goToNextPage,
  }) {
    return goToNextPage?.call(data, nextPageData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneTimeData data)? empty,
    TResult Function(OneTimeData data)? showSnackBar,
    TResult Function(OneTimeData data, String dialogMessage)? showDialog,
    TResult Function(OneTimeData data, int errorCode, String errorMessage)?
        showErrorDialog,
    TResult Function(OneTimeData data)? goToPrevPage,
    TResult Function(OneTimeData data, int nextPageData)? goToNextPage,
    required TResult orElse(),
  }) {
    if (goToNextPage != null) {
      return goToNextPage(data, nextPageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
    required TResult Function(ShowErrorDialog value) showErrorDialog,
    required TResult Function(GoToPrevPage value) goToPrevPage,
    required TResult Function(GoToNextPage value) goToNextPage,
  }) {
    return goToNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(ShowDialog value)? showDialog,
    TResult? Function(ShowErrorDialog value)? showErrorDialog,
    TResult? Function(GoToPrevPage value)? goToPrevPage,
    TResult? Function(GoToNextPage value)? goToNextPage,
  }) {
    return goToNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    TResult Function(ShowErrorDialog value)? showErrorDialog,
    TResult Function(GoToPrevPage value)? goToPrevPage,
    TResult Function(GoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (goToNextPage != null) {
      return goToNextPage(this);
    }
    return orElse();
  }
}

abstract class GoToNextPage implements OneTimeState {
  const factory GoToNextPage(final OneTimeData data, final int nextPageData) =
      _$GoToNextPageImpl;

  @override
  OneTimeData get data;
  int get nextPageData;

  /// Create a copy of OneTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoToNextPageImplCopyWith<_$GoToNextPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OneTimeData {
  OneTimeStatus get status => throw _privateConstructorUsedError;
  int get counterA => throw _privateConstructorUsedError;
  int get counterB => throw _privateConstructorUsedError;
  int get counterC => throw _privateConstructorUsedError;

  /// Create a copy of OneTimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneTimeDataCopyWith<OneTimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTimeDataCopyWith<$Res> {
  factory $OneTimeDataCopyWith(
          OneTimeData value, $Res Function(OneTimeData) then) =
      _$OneTimeDataCopyWithImpl<$Res, OneTimeData>;
  @useResult
  $Res call({OneTimeStatus status, int counterA, int counterB, int counterC});
}

/// @nodoc
class _$OneTimeDataCopyWithImpl<$Res, $Val extends OneTimeData>
    implements $OneTimeDataCopyWith<$Res> {
  _$OneTimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneTimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OneTimeStatus,
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
abstract class _$$OneTimeDataImplCopyWith<$Res>
    implements $OneTimeDataCopyWith<$Res> {
  factory _$$OneTimeDataImplCopyWith(
          _$OneTimeDataImpl value, $Res Function(_$OneTimeDataImpl) then) =
      __$$OneTimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneTimeStatus status, int counterA, int counterB, int counterC});
}

/// @nodoc
class __$$OneTimeDataImplCopyWithImpl<$Res>
    extends _$OneTimeDataCopyWithImpl<$Res, _$OneTimeDataImpl>
    implements _$$OneTimeDataImplCopyWith<$Res> {
  __$$OneTimeDataImplCopyWithImpl(
      _$OneTimeDataImpl _value, $Res Function(_$OneTimeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneTimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? counterA = null,
    Object? counterB = null,
    Object? counterC = null,
  }) {
    return _then(_$OneTimeDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OneTimeStatus,
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

class _$OneTimeDataImpl implements _OneTimeData {
  const _$OneTimeDataImpl(
      {this.status = OneTimeStatus.initial,
      this.counterA = 0,
      this.counterB = 0,
      this.counterC = 0});

  @override
  @JsonKey()
  final OneTimeStatus status;
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
  String toString() {
    return 'OneTimeData(status: $status, counterA: $counterA, counterB: $counterB, counterC: $counterC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneTimeDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.counterA, counterA) ||
                other.counterA == counterA) &&
            (identical(other.counterB, counterB) ||
                other.counterB == counterB) &&
            (identical(other.counterC, counterC) ||
                other.counterC == counterC));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, counterA, counterB, counterC);

  /// Create a copy of OneTimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneTimeDataImplCopyWith<_$OneTimeDataImpl> get copyWith =>
      __$$OneTimeDataImplCopyWithImpl<_$OneTimeDataImpl>(this, _$identity);
}

abstract class _OneTimeData implements OneTimeData {
  const factory _OneTimeData(
      {final OneTimeStatus status,
      final int counterA,
      final int counterB,
      final int counterC}) = _$OneTimeDataImpl;

  @override
  OneTimeStatus get status;
  @override
  int get counterA;
  @override
  int get counterB;
  @override
  int get counterC;

  /// Create a copy of OneTimeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneTimeDataImplCopyWith<_$OneTimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
