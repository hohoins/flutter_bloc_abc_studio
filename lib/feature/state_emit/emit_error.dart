import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmitErrorCubit extends Cubit<EmitErrorState> {
  EmitErrorCubit() : super(const EmitErrorState(0, 0, 0));

  void onTapIncrementA() {
    state.counterA + 1;
    emit(state);
  }

  void onTapIncrementB() {
    state.counterB + 1;
    emit(state);
  }

  void onTapIncrementC() {
    state.counterC + 1;
    emit(state);
  }
}

class EmitErrorState {
  const EmitErrorState(this.counterA, this.counterB, this.counterC);
  final int counterA;
  final int counterB;
  final int counterC;
}

class EmitErrorView extends StatelessWidget {
  const EmitErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmitErrorCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitErrorCubit, EmitErrorState>(
                      builder: (context, state) {
                        return Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitErrorCubit>().onTapIncrementA,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitErrorCubit, EmitErrorState>(
                      builder: (context, state) {
                        return Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitErrorCubit>().onTapIncrementB,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitErrorCubit, EmitErrorState>(
                      builder: (context, state) {
                        return Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitErrorCubit>().onTapIncrementC,
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
