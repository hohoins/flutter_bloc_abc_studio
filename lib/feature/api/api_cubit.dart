import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/api/api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(_initState);

  static ApiState get _initState => const ApiState(
        status: ApiStatus.initial,
        serverData: '',
        counterA: 0,
        counterB: 0,
        counterC: 0,
        isHighlight: false,
      );

  void onTapLoadData() async {
    emit(state.copyWith(status: ApiStatus.loading));
    emit(state.copyWith(serverData: '서버에서 가져온 데이터'));
    emit(state.copyWith(status: ApiStatus.success));
  }

  void onTapIncrementA() => emit(state.copyWith(counterA: state.counterA + 1));

  void onTapIncrementB() => emit(state.copyWith(counterB: state.counterB + 1));

  void onTapIncrementC() => emit(state.copyWith(counterC: state.counterC + 1));

  void onTapCheckBox(bool? isChecked) => emit(state.copyWith(isHighlight: isChecked));
}
