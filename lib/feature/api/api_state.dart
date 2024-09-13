import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state.freezed.dart';

enum ApiStatus { initial, loading, success }

@freezed
class ApiState with _$ApiState {
  const factory ApiState({
    required ApiStatus status,
    required String serverData,
    required int counterA,
    required int counterB,
    required int counterC,
    required bool? isHighlight,
  }) = _ApiState;
}
