import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// bloc
class ExamBloc extends Bloc<ExamBlocEvent, ExamBlocState> {
  ExamBloc() : super(const ExamBlocState(0)) {
    on<ExamIncrement>(_handleIncrement);
    on<ExamDecrement>(_handleDecrement);
    on<ExamReset>(_handleReset);
  }
  void _handleIncrement(ExamIncrement event, Emitter<ExamBlocState> emit) {
    emit(ExamBlocState(state.counter + 1));
  }

  void _handleDecrement(ExamDecrement event, Emitter<ExamBlocState> emit) {
    emit(ExamBlocState(state.counter - 1));
  }

  void _handleReset(ExamReset event, Emitter<ExamBlocState> emit) {
    emit(const ExamBlocState(0));
  }
}

// Event
sealed class ExamBlocEvent {}

final class ExamIncrement extends ExamBlocEvent {}

final class ExamDecrement extends ExamBlocEvent {}

final class ExamReset extends ExamBlocEvent {}

// state
class ExamBlocState {
  const ExamBlocState(this.counter);
  final int counter;
}

// view
class CounterBlocView extends StatelessWidget {
  const CounterBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('bloc counter'),
                BlocBuilder<ExamBloc, ExamBlocState>(
                  builder: (context, state) {
                    return Text('${state.counter}', style: Theme.of(context).textTheme.headlineMedium);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () => context.read<ExamBloc>().add(ExamIncrement()),
                      child: const Icon(Icons.add),
                    ),
                    OutlinedButton(
                      onPressed: () => context.read<ExamBloc>().add(ExamDecrement()),
                      child: const Icon(Icons.remove),
                    ),
                    OutlinedButton(
                      onPressed: () => context.read<ExamBloc>().add(ExamReset()),
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
