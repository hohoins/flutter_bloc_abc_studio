import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emit_freezed.freezed.dart';

class EmitFreezedCubit extends Cubit<EmitFreezedState> {
  EmitFreezedCubit() : super(const EmitFreezedState(counterA: 0, counterB: 0, counterC: 0));

  void onTapIncrementA() {
    final newState = state.copyWith(counterA: state.counterA + 1);
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
}

@freezed
class EmitFreezedState with _$EmitFreezedState {
  const factory EmitFreezedState({
    required int counterA,
    required int counterB,
    required int counterC,
  }) = _EmitFreezedState;
}

class EmitFreezedView extends StatelessWidget {
  const EmitFreezedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EmitFreezedCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitFreezedCubit, EmitFreezedState>(
                      builder: (context, state) {
                        return Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitFreezedCubit>().onTapIncrementA,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitFreezedCubit, EmitFreezedState>(
                      builder: (context, state) {
                        return Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitFreezedCubit>().onTapIncrementB,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitFreezedCubit, EmitFreezedState>(
                      builder: (context, state) {
                        return Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitFreezedCubit>().onTapIncrementC,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
