import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/common/bloc_selector.dart';

class SelectorGoodCubit extends Cubit<SelectorGoodState> {
  SelectorGoodCubit() : super(const SelectorGoodState(0, 0, 0, false));

  void onTapIncrementA() => emit(state.copyWith(counterA: state.counterA + 1));

  void onTapIncrementB() => emit(state.copyWith(counterB: state.counterB + 1));

  void onTapIncrementC() => emit(state.copyWith(counterC: state.counterC + 1));

  void onTapCheckBox(bool? isChecked) => emit(state.copyWith(isHighlight: isChecked));
}

class SelectorGoodState {
  const SelectorGoodState(
    this.counterA,
    this.counterB,
    this.counterC,
    this.isHighlight,
  );

  final int counterA;
  final int counterB;
  final int counterC;
  final bool? isHighlight;

  SelectorGoodState copyWith({
    int? counterA,
    int? counterB,
    int? counterC,
    bool? isHighlight,
  }) {
    return SelectorGoodState(
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
      isHighlight ?? this.isHighlight,
    );
  }
}

class SelectorGoodView extends StatelessWidget {
  const SelectorGoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectorGoodCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocSelector<SelectorGoodCubit, SelectorGoodState, int>(
                  selector: (state) => state.counterA,
                  builder: (context, counterA) {
                    return CounterWidget(
                      text: '[A]   $counterA',
                      onPressed: context.read<SelectorGoodCubit>().onTapIncrementA,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorGoodCubit, SelectorGoodState, int>(
                  selector: (state) => state.counterB,
                  builder: (context, counterB) {
                    return CounterWidget(
                      text: '[B]   $counterB',
                      onPressed: context.read<SelectorGoodCubit>().onTapIncrementB,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorGoodCubit, SelectorGoodState, int>(
                  selector: (state) => state.counterC,
                  builder: (context, counterC) {
                    return CounterWidget(
                      text: '[C]   $counterC',
                      onPressed: context.read<SelectorGoodCubit>().onTapIncrementC,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(height: 1, color: Colors.black),
                const SizedBox(height: 20),
                BlocSelector3<SelectorGoodCubit, SelectorGoodState, int, int, bool?>(
                  selector1: (state) => state.counterB,
                  selector2: (state) => state.counterC,
                  selector3: (state) => state.isHighlight,
                  builder: (context, counterB, counterC, isHighlight) {
                    return ColorEffect(
                      child: Text('[B + C]   ${counterB + counterC}',
                          style: isHighlight == true
                              ? Theme.of(context).textTheme.headlineLarge
                              : Theme.of(context).textTheme.headlineSmall),
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorGoodCubit, SelectorGoodState, bool?>(
                  selector: (state) => state.isHighlight,
                  builder: (context, isHighlight) {
                    return ColorEffect(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isHighlight,
                            onChanged: (value) {
                              _nextDebugColor();
                              context.read<SelectorGoodCubit>().onTapCheckBox(value);
                            },
                          ),
                          Text('합계 강조', style: Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ColorEffect(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {
              _nextDebugColor();
              onPressed();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class ColorEffect extends StatelessWidget {
  const ColorEffect({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: _debugColor,
      duration: const Duration(milliseconds: 500),
      child: child,
    );
  }
}

Color _debugColor = Colors.transparent;
void _nextDebugColor() {
  final random = Random();
  _debugColor = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 0.4);
}
