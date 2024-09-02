import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_state.dart';

class SampleSelectorCubit extends Cubit<SampleSelectorState> {
  SampleSelectorCubit() : super(_initState);

  static SampleSelectorState get _initState => const SampleSelectorState.empty(SampleSelectorData());

  void onTapButtonA() {
    emit(SampleSelectorState.empty(state.data.copyWith(countA: state.countA + 1)));
  }

  void onTapButtonB() {
    emit(SampleSelectorState.empty(state.data.copyWith(countB: state.countB + 1)));
  }

  void onTapButtonC() {
    emit(SampleSelectorState.empty(state.data.copyWith(countC: state.countC + 1)));
  }

  void onTapButtonAB() {
    emit(SampleSelectorState.empty(state.data.copyWith(countA: state.countA + 1)));
    emit(SampleSelectorState.empty(state.data.copyWith(countB: state.countB + 1)));
  }
}
