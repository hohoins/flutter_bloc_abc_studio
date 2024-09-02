import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/counter/counter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/counter/counter_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_view.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_view.dart';
import 'package:flutter_bloc_abc_studio/my_bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

final _screens = [
  const TitleAndWidget('카운터 bloc', CounterBlocView()),
  const TitleAndWidget('카운터 cubit', CounterCubitView()),
  // const TitleAndWidget('emit 동작 안 함', CounterCubit()),
  const TitleAndWidget('Sample Bloc', SampleBlocView()),
  const TitleAndWidget('Sample Selector', SampleSelectorBlocView()),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: _screens.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_screens[index].title),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => _screens[index].widget));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class TitleAndWidget {
  const TitleAndWidget(this.title, this.widget);
  final String title;
  final Widget widget;
}
