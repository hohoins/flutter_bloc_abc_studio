import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_selector_state.freezed.dart';

@freezed
sealed class SampleSelectorState with _$SampleSelectorState {
  const factory SampleSelectorState.empty(SampleSelectorData data) = Empty;

  const SampleSelectorState._();
  int get countA => data.countA;
  int get countB => data.countB;
  int get countC => data.countC;
}

@freezed
class SampleSelectorData with _$SampleSelectorData {
  const factory SampleSelectorData({
    @Default(0) int countA,
    @Default(0) int countB,
    @Default(0) int countC,
  }) = _SampleSelectorData;
}