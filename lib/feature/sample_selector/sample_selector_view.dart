import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/common/bloc_selector.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_state.codegen.dart';

class SampleSelectorBlocView extends StatelessWidget {
  const SampleSelectorBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SampleSelectorCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: BlocSelector<SampleSelectorCubit, SampleSelectorState, int>(
                            selector: (state) => state.countA,
                            builder: (context, countA) {
                              debugPrint('build, A: $countA');
                              return TestButton(
                                color: Colors.green,
                                text: 'A: $countA',
                                onTap: context.read<SampleSelectorCubit>().onTapButtonA,
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: BlocSelector<SampleSelectorCubit, SampleSelectorState, int>(
                            selector: (state) => state.countB,
                            builder: (context, countB) {
                              debugPrint('build, B: $countB');
                              return TestButton(
                                color: Colors.greenAccent,
                                text: 'B: $countB',
                                onTap: context.read<SampleSelectorCubit>().onTapButtonB,
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: BlocSelector<SampleSelectorCubit, SampleSelectorState, int>(
                            selector: (state) => state.countC,
                            builder: (context, countC) {
                              debugPrint('build, C: $countC');
                              return TestButton(
                                color: Colors.purple,
                                text: 'C: $countC',
                                onTap: context.read<SampleSelectorCubit>().onTapButtonC,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: BlocSelector2<SampleSelectorCubit, SampleSelectorState, int, int>(
                              selector1: (state) => state.countA,
                              selector2: (state) => state.countB,
                              builder: (context, countA, countB) {
                                debugPrint('build, A&B: $countA, $countB');
                                return TestButton(
                                  color: Colors.grey,
                                  text: 'A: $countA\nB: $countB\n\nsum: ${countA + countB}',
                                  onTap: context.read<SampleSelectorCubit>().onTapButtonAB,
                                );
                              }),
                        ),
                        const Expanded(flex: 1, child: SizedBox.shrink()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({
    super.key,
    required this.color,
    required this.text,
    required this.onTap,
  });

  final Color color;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
