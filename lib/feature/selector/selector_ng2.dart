import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectorNg2Cubit extends Cubit<SelectorNg2State> {
  SelectorNg2Cubit() : super(const SelectorNg2State(0, 0, 0, false));

  void onTapIncrementA() => emit(state.copyWith(counterA: state.counterA + 1));

  void onTapIncrementB() => emit(state.copyWith(counterB: state.counterB + 1));

  void onTapIncrementC() => emit(state.copyWith(counterC: state.counterC + 1));

  void onTapCheckBox(bool? isChecked) => emit(state.copyWith(isHighlight: isChecked));
}

class SelectorNg2State {
  const SelectorNg2State(
    this.counterA,
    this.counterB,
    this.counterC,
    this.isHighlight,
  );

  final int counterA;
  final int counterB;
  final int counterC;
  final bool? isHighlight;

  SelectorNg2State copyWith({
    int? counterA,
    int? counterB,
    int? counterC,
    bool? isHighlight,
  }) {
    return SelectorNg2State(
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
      isHighlight ?? this.isHighlight,
    );
  }
}

class SelectorNg2View extends StatelessWidget {
  const SelectorNg2View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectorNg2Cubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocSelector<SelectorNg2Cubit, SelectorNg2State, int>(
                  selector: (state) => state.counterA,
                  builder: (context, counterA) {
                    return CounterWidget(
                      text: '[A]   $counterA',
                      onPressed: context.read<SelectorNg2Cubit>().onTapIncrementA,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorNg2Cubit, SelectorNg2State, int>(
                  selector: (state) => state.counterB,
                  builder: (context, counterB) {
                    return CounterWidget(
                      text: '[B]   $counterB',
                      onPressed: context.read<SelectorNg2Cubit>().onTapIncrementB,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorNg2Cubit, SelectorNg2State, int>(
                  selector: (state) => state.counterC,
                  builder: (context, counterC) {
                    return CounterWidget(
                      text: '[C]   $counterC',
                      onPressed: context.read<SelectorNg2Cubit>().onTapIncrementC,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(height: 1, color: Colors.black),
                const SizedBox(height: 20),
                BlocBuilder<SelectorNg2Cubit, SelectorNg2State>(
                  buildWhen: (previous, current) =>
                      previous.counterB != current.counterB ||
                      previous.counterC != current.counterC ||
                      previous.isHighlight != current.isHighlight,
                  builder: (context, state) {
                    return ColorEffect(
                      child: Text('[B + C]   ${state.counterB + state.counterC}',
                          style: state.isHighlight == true
                              ? Theme.of(context).textTheme.headlineLarge
                              : Theme.of(context).textTheme.headlineSmall),
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocSelector<SelectorNg2Cubit, SelectorNg2State, bool?>(
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
                              context.read<SelectorNg2Cubit>().onTapCheckBox(value);
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
