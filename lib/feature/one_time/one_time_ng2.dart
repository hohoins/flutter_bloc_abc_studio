import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OneTimeNg2Cubit extends Cubit<OneTimeNg2State> {
  OneTimeNg2Cubit() : super(const OneTimeNg2State(OneTimeNg2Status.initial, 0, 0, 0, 0, '', 0, ''));

  void onTapIncrementA() {
    final newState = state.copyWith(counterA: state.counterA + 1);
    emit(newState);
    _goToPrevPage();
  }

  void onTapIncrementB() {
    final newState = state.copyWith(counterB: state.counterB + 1);
    emit(newState);
    _goToNextPage();
  }

  void onTapIncrementC() {
    final newState = state.copyWith(counterC: state.counterC + 1);
    emit(newState);
    _showDialog();
  }

  void onTapLoadData() async {
    emit(state.copyWith(status: OneTimeNg2Status.loading));
    await Future.delayed(const Duration(seconds: 1));
    final isError = Random().nextBool();
    if (isError) {
      emit(
        state.copyWith(
          status: OneTimeNg2Status.failure,
          errorCode: 500,
          errorMessage: 'Server Error',
        ),
      );
    } else {
      emit(state.copyWith(status: OneTimeNg2Status.success));
    }
  }

  void _goToNextPage() {
    emit(
      state.copyWith(
        status: OneTimeNg2Status.nextPage,
        nextPageData: state.counterA + state.counterB + state.counterC,
      ),
    );
  }

  void _goToPrevPage() {
    emit(state.copyWith(status: OneTimeNg2Status.prevPage));
  }

  void _showDialog() {
    emit(
      state.copyWith(
        status: OneTimeNg2Status.dialog,
        dialogMessage: 'Dialog Message: ${state.counterA}',
      ),
    );
  }
}

enum OneTimeNg2Status {
  initial,
  loading,
  success,
  failure,
  prevPage,
  nextPage,
  dialog,
}

class OneTimeNg2State {
  const OneTimeNg2State(
    this.status,
    this.counterA,
    this.counterB,
    this.counterC,
    this.errorCode,
    this.errorMessage,
    this.nextPageData,
    this.dialogMessage,
  );
  final OneTimeNg2Status status;
  final int counterA;
  final int counterB;
  final int counterC;
  final int errorCode;
  final String errorMessage;
  final int nextPageData;
  final String dialogMessage;

  OneTimeNg2State copyWith({
    OneTimeNg2Status? status,
    int? errorCode,
    String? errorMessage,
    int? counterA,
    int? counterB,
    int? counterC,
    int? nextPageData,
    String? dialogMessage,
  }) {
    return OneTimeNg2State(
      status ?? this.status,
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
      errorCode ?? this.errorCode,
      errorMessage ?? this.errorMessage,
      nextPageData ?? this.nextPageData,
      dialogMessage ?? this.dialogMessage,
    );
  }
}

class OneTimeNg2View extends StatelessWidget {
  const OneTimeNg2View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OneTimeNg2Cubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<OneTimeNg2Cubit, OneTimeNg2State>(
              listener: (context, state) {
                if (state.status == OneTimeNg2Status.success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('성공\n데이터 업데이트\nFuture<Flutter> 2024'),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                } else if (state.status == OneTimeNg2Status.failure) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Error'),
                        content: Text('Error Code: ${state.errorCode}\nError Message: ${state.errorMessage}'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (state.status == OneTimeNg2Status.dialog) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Dialog'),
                        content: Text(state.dialogMessage),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (state.status == OneTimeNg2Status.prevPage) {
                  // todo
                } else if (state.status == OneTimeNg2Status.nextPage) {
                  // todo
                }
              },
              child: const _Contents(),
            ),
          );
        },
      ),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneTimeNg2Cubit, OneTimeNg2State>(builder: (context, state) {
      Widget dataLoadWidget;
      if (state.status == OneTimeNg2Status.loading) {
        dataLoadWidget = const CircularProgressIndicator();
      } else {
        dataLoadWidget = Column(
          children: [
            Text('status: ${state.status.name}', style: Theme.of(context).textTheme.headlineMedium),
            OutlinedButton(
              onPressed: context.read<OneTimeNg2Cubit>().onTapLoadData,
              child: Text('Load Data', style: Theme.of(context).textTheme.headlineMedium),
            )
          ],
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          dataLoadWidget,
          const SizedBox(height: 10),
          Container(height: 1, color: Colors.black),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[A]   ${state.counterA}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNg2Cubit>().onTapIncrementA,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[B]   ${state.counterB}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNg2Cubit>().onTapIncrementB,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[C]   ${state.counterC}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeNg2Cubit>().onTapIncrementC,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      );
    });
  }
}
