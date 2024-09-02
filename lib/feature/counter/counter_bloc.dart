import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// bloc
class CounterBloc extends Bloc<CounterBlocEvent, int> {
  CounterBloc() : super(0) {
    on<ExamIncrement>(_handleIncrement);
    on<ExamDecrement>(_handleDecrement);
    on<ExamReset>(_handleReset);
  }

  void _handleIncrement(ExamIncrement event, Emitter<int> emit) {
    emit(state + 1);
  }

  void _handleDecrement(ExamDecrement event, Emitter<int> emit) {
    emit(state - 1);
  }

  void _handleReset(ExamReset event, Emitter<int> emit) {
    emit(0);
  }
}

// Event
sealed class CounterBlocEvent {}

final class ExamIncrement extends CounterBlocEvent {}

final class ExamDecrement extends CounterBlocEvent {}

final class ExamReset extends CounterBlocEvent {}

// view
class CounterBlocView extends StatelessWidget {
  const CounterBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('bloc counter'),
                BlocBuilder<CounterBloc, int>(
                  builder: (context, state) {
                    return Text('$state', style: Theme.of(context).textTheme.headlineMedium);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () => context.read<CounterBloc>().add(ExamIncrement()),
                      child: const Icon(Icons.add),
                    ),
                    OutlinedButton(
                      onPressed: () => context.read<CounterBloc>().add(ExamDecrement()),
                      child: const Icon(Icons.remove),
                    ),
                    OutlinedButton(
                      onPressed: () => context.read<CounterBloc>().add(ExamReset()),
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
