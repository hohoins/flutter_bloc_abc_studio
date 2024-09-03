import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmitCopyCubit extends Cubit<EmitCopyState> {
  EmitCopyCubit() : super(const EmitCopyState(0, 0, 0));

  void onTapIncrementA() {
    final newState = EmitCopyState(
      state.counterA + 1,
      state.counterB,
      state.counterC,
    );
    emit(newState);
  }

  void onTapIncrementB() {
    final newState = EmitCopyState(
      state.counterA,
      state.counterB + 1,
      state.counterC,
    );
    emit(newState);
  }

  void onTapIncrementC() {
    final newState = EmitCopyState(
      state.counterA,
      state.counterB,
      state.counterC + 1,
    );
    emit(newState);
  }
}

class EmitCopyState {
  const EmitCopyState(this.counterA, this.counterB, this.counterC);
  final int counterA;
  final int counterB;
  final int counterC;
}

class EmitCopyView extends StatelessWidget {
  const EmitCopyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EmitCopyCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyCubit, EmitCopyState>(
                      builder: (context, state) {
                        return Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyCubit>().onTapIncrementA,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyCubit, EmitCopyState>(
                      builder: (context, state) {
                        return Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyCubit>().onTapIncrementB,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<EmitCopyCubit, EmitCopyState>(
                      builder: (context, state) {
                        return Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium);
                      },
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: context.read<EmitCopyCubit>().onTapIncrementC,
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
