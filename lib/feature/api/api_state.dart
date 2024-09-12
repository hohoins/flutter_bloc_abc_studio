import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state.freezed.dart';

enum ApiStatus { initial, loading, success }

@freezed
class ApiState with _$ApiState {
  const factory ApiState({
    @Default(ApiStatus.initial) ApiStatus status,
    @Default('') String serverData,
    @Default(0) int counterA,
    @Default(0) int counterB,
    @Default(0) int counterC,
    @Default(false) bool? isHighlight,
  }) = _ApiState;
}
