import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_state.codegen.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit() : super(_initState);

  static SampleState get _initState => const SampleState.empty(SampleData());

  void onTapIncrement() {
    emit(SampleState.empty(state.data.copyWith(counter: state.counter + 1)));
  }
}
