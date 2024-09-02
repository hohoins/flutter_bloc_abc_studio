import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// cubit
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void onTapIncrement() {
    emit(state + 1);
  }

  void onTapDecrement() {
    emit(state - 1);
  }

  void onTapReset() {
    emit(0);
  }
}

// view
class CounterCubitView extends StatelessWidget {
  const CounterCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('cubit counter'),
                BlocBuilder<CounterCubit, int>(
                  builder: (context, state) {
                    return Text('$state', style: Theme.of(context).textTheme.headlineMedium);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: context.read<CounterCubit>().onTapIncrement,
                      child: const Icon(Icons.add),
                    ),
                    OutlinedButton(
                      onPressed: context.read<CounterCubit>().onTapDecrement,
                      child: const Icon(Icons.remove),
                    ),
                    OutlinedButton(
                      onPressed: context.read<CounterCubit>().onTapReset,
                      child: const Icon(Icons.refresh),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
