import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_time_state.freezed.dart';

// 일회성 동작 데이터
@freezed
sealed class OneTimeState with _$OneTimeState {
  const factory OneTimeState.empty(OneTimeData data) = Empty;
  const factory OneTimeState.showSnackBar(OneTimeData data) = ShowSnackBar;
  const factory OneTimeState.showDialog(OneTimeData data, String dialogMessage) = ShowDialog;
  const factory OneTimeState.goToPrevPage(OneTimeData data, int prevPageData) = GoToPrevPage;
  const factory OneTimeState.goToNextPage(OneTimeData data, int nextPageData) = GoToNextPage;
}

// 화면을 그리는 데이터
@freezed
class OneTimeData with _$OneTimeData {
  const factory OneTimeData({
    @Default(OneTimeStatus.initial) OneTimeStatus status,
    @Default(0) int counterA,
    @Default(0) int counterB,
    @Default(0) int counterC,
  }) = _OneTimeData;
}

enum OneTimeStatus { initial, loading, success }
