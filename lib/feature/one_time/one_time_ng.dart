import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OneTimeNgCubit extends Cubit<OneTimeNgState> {
  OneTimeNgCubit() : super(const OneTimeNgState(OneTimeNgStatus.initial, 0, 0, 0));

  void onTapIncrementA() {
    final newState = state.copyWith(
      counterA: state.counterA + 1,
    );
    emit(newState);
  }

  void onTapIncrementB() {
    final newState = state.copyWith(counterB: state.counterB + 1);
    emit(newState);
  }

  void onTapIncrementC() {
    final newState = state.copyWith(counterC: state.counterC + 1);
    emit(newState);
  }

  void onTapLoadData() async {
    emit(state.copyWith(status: OneTimeNgStatus.loading));
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(status: OneTimeNgStatus.success));
  }
}

enum OneTimeNgStatus { initial, loading, success }

class OneTimeNgState {
  final OneTimeNgStatus status;
  final int counterA;
  final int counterB;
  final int counterC;

  const OneTimeNgState(
    this.status,
    this.counterA,
    this.counterB,
    this.counterC,
  );
  OneTimeNgState copyWith({
    OneTimeNgStatus? status,
    int? errorCode,
    String? errorMessage,
    int? counterA,
    int? counterB,
    int? counterC,
  }) {
    return OneTimeNgState(
      status ?? this.status,
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
    );
  }
}

class OneTimeNgView extends StatelessWidget {
  const OneTimeNgView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OneTimeNgCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<OneTimeNgCubit, OneTimeNgState>(
              listener: (context, state) {
                if (state.status == OneTimeNgStatus.success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('성공\n데이터 업데이트\nFuture<Flutter> 2024'),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                }
              },
              child: const _Contents(),
            ),
          );
        },
      ),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneTimeNgCubit, OneTimeNgState>(builder: (context, state) {
      Widget loadButton;
      if (state.status == OneTimeNgStatus.loading) {
        loadButton = const CircularProgressIndicator();
      } else {
        loadButton = OutlinedButton(
          onPressed: context.read<OneTimeNgCubit>().onTapLoadData,
          child: Text('Load Data', style: Theme.of(context).textTheme.headlineMedium),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('status: ${state.status.name}', style: Theme.of(context).textTheme.headlineMedium),
              loadButton,
            ],
          ),
          const SizedBox(height: 10),
          Container(height: 1, color: Colors.black),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNgCubit>().onTapIncrementA,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNgCubit>().onTapIncrementB,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNgCubit>().onTapIncrementC,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      );
    });
  }
}
