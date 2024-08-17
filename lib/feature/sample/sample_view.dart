import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_state.codegen.dart';

class SampleBlocView extends StatelessWidget {
  const SampleBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SampleCubit(),
      child: BlocListener<SampleCubit, SampleState>(
        listener: (context, state) {
          switch (state) {
            case Empty():
              break;
          }
        },
        child: const SampleView(),
      ),
    );
  }
}

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('sample title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            BlocSelector<SampleCubit, SampleState, int>(
                selector: (state) => state.counter,
                builder: (context, counter) {
                  return Text('$counter', style: Theme.of(context).textTheme.headlineMedium);
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<SampleCubit>().onTapIncrement,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
