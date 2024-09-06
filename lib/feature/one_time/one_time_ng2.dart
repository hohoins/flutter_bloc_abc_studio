import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OneTimeNg2Cubit extends Cubit<OneTimeNg2State> {
  OneTimeNg2Cubit() : super(const OneTimeNg2State(OneTimeNg2Status.initial, 0, 0, 0, '', 0, 0));

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
  }

  void onTapLoadData() async {
    emit(state.copyWith(status: OneTimeNg2Status.loading));
    await Future.delayed(const Duration(milliseconds: 500));
    final isError = Random().nextBool();
    if (isError) {
      _showDialog('data loading error');
    } else {
      emit(state.copyWith(status: OneTimeNg2Status.success));
    }
  }

  void _goToNextPage() {
    emit(
      state.copyWith(
        status: OneTimeNg2Status.goToNextPage,
        nextPageData: 200,
      ),
    );
  }

  void _goToPrevPage() {
    emit(state.copyWith(
      status: OneTimeNg2Status.goToPrevPage,
      prevPageData: 404,
    ));
  }

  void _showDialog(String message) {
    emit(
      state.copyWith(
        status: OneTimeNg2Status.showDialog,
        dialogMessage: message,
      ),
    );
  }
}

enum OneTimeNg2Status {
  initial,
  loading,
  success,
  showDialog,
  goToPrevPage,
  goToNextPage,
}

class OneTimeNg2State {
  const OneTimeNg2State(
    this.status,
    this.counterA,
    this.counterB,
    this.counterC,
    this.dialogMessage,
    this.prevPageData,
    this.nextPageData,
  );
  final OneTimeNg2Status status;
  final int counterA;
  final int counterB;
  final int counterC;
  final String dialogMessage;
  final int prevPageData;
  final int nextPageData;

  OneTimeNg2State copyWith({
    OneTimeNg2Status? status,
    int? counterA,
    int? counterB,
    int? counterC,
    String? dialogMessage,
    int? prevPageData,
    int? nextPageData,
  }) {
    return OneTimeNg2State(
      status ?? this.status,
      counterA ?? this.counterA,
      counterB ?? this.counterB,
      counterC ?? this.counterC,
      dialogMessage ?? this.dialogMessage,
      prevPageData ?? this.prevPageData,
      nextPageData ?? this.nextPageData,
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
                  _showSnackBar(context);
                } else if (state.status == OneTimeNg2Status.showDialog) {
                  _showDialog(context, state.dialogMessage);
                } else if (state.status == OneTimeNg2Status.goToPrevPage) {
                  debugPrint('pop, goToPrevPage: ${state.prevPageData}');
                } else if (state.status == OneTimeNg2Status.goToNextPage) {
                  debugPrint('push, goToNextPage: ${state.nextPageData}');
                }
              },
              child: const _Contents(),
            ),
          );
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('성공\n데이터 업데이트\nFuture<Flutter> 2024'),
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dialog'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneTimeNg2Cubit, OneTimeNg2State>(builder: (context, state) {
      Widget loadButton;
      if (state.status == OneTimeNg2Status.loading) {
        loadButton = const CircularProgressIndicator();
      } else {
        loadButton = OutlinedButton(
          onPressed: context.read<OneTimeNg2Cubit>().onTapLoadData,
          child: Text('Load Data', style: Theme.of(context).textTheme.headlineMedium),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('status: ${state.status.name}', style: Theme.of(context).textTheme.headlineMedium),
              loadButton,
            ],
          ),
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
