import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectorNgCubit extends Cubit<SelectorNgState> {
  SelectorNgCubit() : super(const SelectorNgState(0, 0, 0, false));

  void onTapIncrementA() => emit(state.copyWith(counterA: state.counterA + 1));

  void onTapIncrementB() => emit(state.copyWith(counterB: state.counterB + 1));

  void onTapIncrementC() => emit(state.copyWith(counterC: state.counterC + 1));

  void onTapCheckBox(bool? isChecked) => emit(state.copyWith(isHighlight: isChecked));
}

class SelectorNgState {
  const SelectorNgState(
    this.counterA,
    this.counterB,
    this.counterC,
    this.isHighlight,
  );

  final int counterA;
  final int counterB;
  final int counterC;
  final bool? isHighlight;

  SelectorNgState copyWith({
    int? counterA,
    int? counterB,
    int? counterC,
    bool? isHighlight,
  }) {
    return SelectorNgState(
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
      isHighlight ?? this.isHighlight,
    );
  }
}

class SelectorNgView extends StatelessWidget {
  const SelectorNgView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectorNgCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<SelectorNgCubit, SelectorNgState>(
                  builder: (context, state) {
                    return CounterWidget(
                      text: '[A]   ${state.counterA}',
                      onPressed: context.read<SelectorNgCubit>().onTapIncrementA,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<SelectorNgCubit, SelectorNgState>(
                  builder: (context, state) {
                    return CounterWidget(
                      text: '[B]   ${state.counterB}',
                      onPressed: context.read<SelectorNgCubit>().onTapIncrementB,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<SelectorNgCubit, SelectorNgState>(
                  builder: (context, state) {
                    return CounterWidget(
                      text: '[C]   ${state.counterC}',
                      onPressed: context.read<SelectorNgCubit>().onTapIncrementC,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(height: 1, color: Colors.black),
                const SizedBox(height: 20),
                BlocBuilder<SelectorNgCubit, SelectorNgState>(
                  builder: (context, state) {
                    return ColorEffect(
                      child: Text('[B + C]   ${state.counterA + state.counterB}',
                          style: state.isHighlight == true
                              ? Theme.of(context).textTheme.headlineLarge
                              : Theme.of(context).textTheme.headlineSmall),
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<SelectorNgCubit, SelectorNgState>(
                  builder: (context, state) {
                    return ColorEffect(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: state.isHighlight,
                            onChanged: (value) {
                              _nextDebugColor();
                              context.read<SelectorNgCubit>().onTapCheckBox(value);
                            },
                          ),
                          Text('합계 강조', style: Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    );
                  },
                ),
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
