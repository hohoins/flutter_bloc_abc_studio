import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmitCopyWithCubit extends Cubit<EmitCopyWithState> {
  EmitCopyWithCubit() : super(const EmitCopyWithState(0, 0, 0));

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

class EmitCopyWithState {
  const EmitCopyWithState(this.counterA, this.counterB, this.counterC);
  final int counterA;
  final int counterB;
  final int counterC;

  EmitCopyWithState copyWith({
    int? counterA,
    int? counterB,
    int? counterC,
  }) {
    return EmitCopyWithState(
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
    );
  }
}

class EmitCopyWithView extends StatelessWidget {
  const EmitCopyWithView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EmitCopyWithCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyWithCubit, EmitCopyWithState>(
                      builder: (context, state) {
                        return Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyWithCubit>().onTapIncrementA,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyWithCubit, EmitCopyWithState>(
                      builder: (context, state) {
                        return Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyWithCubit>().onTapIncrementB,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyWithCubit, EmitCopyWithState>(
                      builder: (context, state) {
                        return Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyWithCubit>().onTapIncrementC,
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
