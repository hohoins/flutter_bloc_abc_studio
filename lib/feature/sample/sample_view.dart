import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_state.dart';

class SampleBlocView extends StatelessWidget {
  const SampleBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SampleCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('You have pushed the button this many times:'),
                  BlocBuilder<SampleCubit, SampleState>(
                    builder: (context, state) {
                      return Text('${state.counter}', style: Theme.of(context).textTheme.headlineMedium);
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: context.read<SampleCubit>().onTapIncrement,
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
