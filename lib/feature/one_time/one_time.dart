import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/one_time/one_time_state.dart';

class OneTimeCubit extends Cubit<OneTimeState> {
  OneTimeCubit() : super(const OneTimeState.empty(OneTimeData()));

  void onTapIncrementA() {
    // emit(state.copyWith(counterA: state.counterA + 1));
    emit(OneTimeState.empty(state.data.copyWith(counterA: state.data.counterA + 1)));
    _goToPrevPage();
  }

  void onTapIncrementB() {
    // emit(state.copyWith(counterB: state.counterB + 1));
    emit(OneTimeState.empty(state.data.copyWith(counterB: state.data.counterB + 1)));
    _goToNextPage();
  }

  void onTapIncrementC() {
    // emit(state.copyWith(counterC: state.counterC + 1));
    emit(OneTimeState.empty(state.data.copyWith(counterC: state.data.counterC + 1)));
    _showDialog();
  }

  void onTapLoadData() async {
    // emit(state.copyWith(status: OneTimeStatus.loading));
    emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.loading)));
    await Future.delayed(const Duration(seconds: 1));
    final isError = Random().nextBool();
    if (isError) {
      // emit(
      //   state.copyWith(status: OneTimeStatus.failure, errorCode: 500, errorMessage: 'Server Error'),
      // );
      emit(OneTimeState.showErrorDialog(state.data, 500, 'Server Error'));
      emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.initial)));
    } else {
      // emit(state.copyWith(status: OneTimeStatus.success));
      emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.success)));
      emit(OneTimeState.showSnackBar(state.data));
    }
  }

  void _goToNextPage() {
    // emit(
    //   state.copyWith(status: OneTimeNg2Status.nextPage, nextPageData: state.counterA + state.counterB + state.counterC),
    // );
    final sum = state.data.counterA + state.data.counterB + state.data.counterC;
    emit(OneTimeState.goToNextPage(state.data, sum));
  }

  void _goToPrevPage() {
    // emit(state.copyWith(status: OneTimeNg2Status.prevPage));
    emit(OneTimeState.goToPrevPage(state.data));
  }

  void _showDialog() {
    // emit(state.copyWith(status: OneTimeNg2Status.dialog, dialogMessage: 'Dialog Message: ${state.counterA}'));
    emit(OneTimeState.showDialog(state.data, 'Dialog Message: ${state.data.counterA}'));
  }
}

class OneTimeView extends StatelessWidget {
  const OneTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OneTimeCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<OneTimeCubit, OneTimeState>(
              listener: (context, state) {
                switch (state) {
                  case ShowSnackBar():
                    _showSnackBar(context);
                  case ShowErrorDialog(:final errorCode, :final errorMessage):
                    _showErrorDialog(context, errorCode, errorMessage);
                  case ShowDialog(:final dialogMessage):
                    _showDialog(context, dialogMessage);
                  case GoToPrevPage():
                    _prevPage(context);
                  case GoToNextPage(:final nextPageData):
                    _nextPage(context, nextPageData);
                  case Empty():
                    break;
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

  void _showErrorDialog(BuildContext context, int errorCode, String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text('Error Code: $errorCode\nError Message: $errorMessage'),
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

  void _showDialog(BuildContext context, String dialogMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dialog'),
          content: Text(dialogMessage),
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

  void _prevPage(BuildContext context) {}

  void _nextPage(BuildContext context, int nextPageData) {}
}

class _Contents extends StatelessWidget {
  const _Contents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneTimeCubit, OneTimeState>(builder: (context, state) {
      Widget dataLoadWidget;
      if (state.data.status == OneTimeStatus.loading) {
        dataLoadWidget = const CircularProgressIndicator();
      } else {
        dataLoadWidget = Column(
          children: [
            Text('status: ${state.data.status.name}', style: Theme.of(context).textTheme.headlineMedium),
            OutlinedButton(
              onPressed: context.read<OneTimeCubit>().onTapLoadData,
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
              Text('[A]   ${state.data.counterA}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeCubit>().onTapIncrementA,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[B]   ${state.data.counterB}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeCubit>().onTapIncrementB,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('[C]   ${state.data.counterC}', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(width: 10),
              OutlinedButton(
                onPressed: context.read<OneTimeCubit>().onTapIncrementC,
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
