import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/api/api_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/api/api_state.dart';

class ApiBlocView extends StatelessWidget {
  const ApiBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ApiCubit(),
      child: const ApiView(),
    );
  }
}

class ApiView extends StatelessWidget {
  const ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(builder: (context, state) {
      Widget loadButton;
      if (state.status == ApiStatus.loading) {
        loadButton = const CircularProgressIndicator();
      } else {
        loadButton = OutlinedButton(
          onPressed: context.read<ApiCubit>().onTapLoadData,
          child: Text('Load Data', style: Theme.of(context).textTheme.headlineMedium),
        );
      }

      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('status: ${state.status.name}', style: Theme.of(context).textTheme.headlineMedium),
                Text(state.serverData, style: Theme.of(context).textTheme.headlineSmall),
                loadButton,
              ],
            ),
            const SizedBox(height: 10),
            Container(height: 1, color: Colors.black),
            const SizedBox(height: 10),
            CounterWidget(
              text: '[A]   ${state.counterA}',
              onPressed: context.read<ApiCubit>().onTapIncrementA,
            ),
            const SizedBox(height: 10),
            CounterWidget(
              text: '[B]   ${state.counterB}',
              onPressed: context.read<ApiCubit>().onTapIncrementB,
            ),
            const SizedBox(height: 10),
            CounterWidget(
              text: '[C]   ${state.counterC}',
              onPressed: context.read<ApiCubit>().onTapIncrementC,
            ),
            const SizedBox(height: 20),
            Container(height: 1, color: Colors.black),
            const SizedBox(height: 20),
            Text('[B + C]   ${state.counterB + state.counterC}',
                style: state.isHighlight == true
                    ? Theme.of(context).textTheme.headlineLarge
                    : Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: state.isHighlight,
                  onChanged: (value) {
                    context.read<ApiCubit>().onTapCheckBox(value);
                  },
                ),
                Text('합계 강조', style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          ],
        ),
      );
    });
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: onPressed,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
