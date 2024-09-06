import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/one_time/one_time_state.dart';

class OneTimeCubit extends Cubit<OneTimeState> {
  OneTimeCubit() : super(const OneTimeState.empty(OneTimeData()));

  void onTapIncrementA() {
    emit(OneTimeState.empty(state.data.copyWith(counterA: state.data.counterA + 1)));
  }

  void onTapIncrementB() {
    emit(OneTimeState.empty(state.data.copyWith(counterB: state.data.counterB + 1)));
  }

  void onTapIncrementC() {
    emit(OneTimeState.empty(state.data.copyWith(counterC: state.data.counterC + 1)));
  }

  void onTapLoadData() async {
    emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.loading)));
    await Future.delayed(const Duration(milliseconds: 500));
    final isError = Random().nextBool();
    if (isError) {
      _showDialog('data loading error');
      emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.initial)));
    } else {
      emit(OneTimeState.empty(state.data.copyWith(status: OneTimeStatus.success)));
      emit(OneTimeState.showSnackBar(state.data));
    }
  }

  void _goToNextPage() {
    emit(OneTimeState.goToNextPage(state.data, 200));
  }

  void _goToPrevPage() {
    emit(OneTimeState.goToPrevPage(state.data, 404));
  }

  void _showDialog(String message) {
    emit(OneTimeState.showDialog(state.data, message));
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
                  case ShowDialog(:final dialogMessage):
                    _showDialog(context, dialogMessage);
                  case GoToPrevPage(:final prevPageData):
                    _goToPrevPage(context, prevPageData);
                  case GoToNextPage(:final nextPageData):
                    _goToNextPage(context, nextPageData);
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

  void _goToPrevPage(BuildContext context, int prevPageData) {
    debugPrint('pop, goToPrevPage: $prevPageData');
  }

  void _goToNextPage(BuildContext context, int nextPageData) {
    debugPrint('pop, goToNextPage: $nextPageData');
  }
}

class _Contents extends StatelessWidget {
  const _Contents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneTimeCubit, OneTimeState>(builder: (context, state) {
      Widget loadButton;
      if (state.data.status == OneTimeStatus.loading) {
        loadButton = const CircularProgressIndicator();
      } else {
        loadButton = OutlinedButton(
          onPressed: context.read<OneTimeCubit>().onTapLoadData,
          child: Text('Load Data', style: Theme.of(context).textTheme.headlineMedium),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('status: ${state.data.status.name}', style: Theme.of(context).textTheme.headlineMedium),
              loadButton,
            ],
          ),
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
