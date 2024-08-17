import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_state.codegen.freezed.dart';

@Freezed(toStringOverride: true, equal: true)
sealed class SampleState with _$SampleState {
  const factory SampleState.empty(SampleData data) = Empty;

  const SampleState._();
  int get counter => data.counter;
}

@Freezed(toStringOverride: true, equal: true, copyWith: true)
class SampleData with _$SampleData {
  const factory SampleData({
    @Default(0) int counter,
  }) = _SampleData;
}
