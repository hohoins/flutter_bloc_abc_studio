import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_abc_studio/feature/api/api_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/api/api_state.dart';
import 'package:flutter_test/flutter_test.dart';

import '../state_keeper.dart';

void main() {
  blocTest(
    'A 더하기',
    build: () => ApiCubit(),
    act: (cubit) => cubit.onTapIncrementA(),
    expect: () => [isA<ApiState>()],
  );

  blocTest(
    'A 더하기, 한땀 한땀',
    build: () => ApiCubit(),
    act: (cubit) => cubit.onTapIncrementA(),
    expect: () => [
      const TypeMatcher<ApiState>()
          .having((state) => state.status, 'status', ApiStatus.initial)
          .having((state) => state.counterA, 'counterA', 1)
          .having((state) => state.counterB, 'counterB', 0)
          .having((state) => state.counterC, 'counterC', 0)
          .having((state) => state.serverData, 'serverData', '')
          .having((state) => state.isHighlight, 'isHighlight', false)
    ],
  );

  blocTest(
    'A 더하기, freezed equal 사용',
    build: () => ApiCubit(),
    act: (cubit) {
      cubit.onTapIncrementA();
    },
    expect: () => [
      const ApiState(
        status: ApiStatus.initial,
        counterA: 1,
        counterB: 0,
        counterC: 0,
        serverData: '',
        isHighlight: false,
      )
    ],
  );

  blocTest(
    '서버 데이터 불러오기',
    build: () => ApiCubit(),
    act: (cubit) {
      cubit.onTapLoadData();
    },
    expect: () => [
      const ApiState(
        status: ApiStatus.loading,
        counterA: 0,
        counterB: 0,
        counterC: 0,
        serverData: '',
        isHighlight: false,
      ),
      const ApiState(
        status: ApiStatus.loading,
        counterA: 0,
        counterB: 0,
        counterC: 0,
        serverData: '서버에서 가져온 데이터',
        isHighlight: false,
      ),
      const ApiState(
        status: ApiStatus.success,
        counterA: 0,
        counterB: 0,
        counterC: 0,
        serverData: '서버에서 가져온 데이터',
        isHighlight: false,
      )
    ],
  );

  {
    late StateKeeper<ApiState> keep;
    blocTest(
      '서버 데이터 불러오기, StateKeeper',
      build: () => ApiCubit(),
      act: (cubit) {
        keep = StateKeeper(cubit.state);
        cubit.onTapLoadData();
      },
      expect: () => [
        keep.emit(keep.state.copyWith(status: ApiStatus.loading)),
        keep.emit(keep.state.copyWith(serverData: '서버에서 가져온 데이터')),
        keep.emit(keep.state.copyWith(status: ApiStatus.success)),
      ],
    );
  }
}
