import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/counter/counter_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/counter/counter_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/one_time/one_time.dart';
import 'package:flutter_bloc_abc_studio/feature/one_time/one_time_ng.dart';
import 'package:flutter_bloc_abc_studio/feature/one_time/one_time_ng2.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_view.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_view.dart';
import 'package:flutter_bloc_abc_studio/feature/selector/selector_good.dart';
import 'package:flutter_bloc_abc_studio/feature/selector/selector_ng.dart';
import 'package:flutter_bloc_abc_studio/feature/selector/selector_ng2.dart';
import 'package:flutter_bloc_abc_studio/feature/state_emit/emit_copy.dart';
import 'package:flutter_bloc_abc_studio/feature/state_emit/emit_copywith.dart';
import 'package:flutter_bloc_abc_studio/feature/state_emit/emit_error.dart';
import 'package:flutter_bloc_abc_studio/feature/state_emit/emit_freezed.dart';
import 'package:flutter_bloc_abc_studio/my_bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

List<TitleAndWidget> get _screens => [
      const TitleAndWidget('카운터 bloc', CounterBlocView()),
      const TitleAndWidget('카운터 cubit', CounterCubitView()),
      const TitleAndWidget('#1 emit() 동작 안 함', EmitErrorView()),
      const TitleAndWidget('#2 emit() 수동 복사', EmitCopyView()),
      const TitleAndWidget('#3 emit() copyWith', EmitCopyWithView()),
      const TitleAndWidget('#4 emit() freezed', EmitFreezedView()),
      const TitleAndWidget('#1 일회성 동작, NG', OneTimeNgView()),
      const TitleAndWidget('#2 일회성 동작, NG2', OneTimeNg2View()),
      const TitleAndWidget('#3 일회성 동작, GOOD', OneTimeView()),
      const TitleAndWidget('#1 build 최적화, NG', SelectorNgView()),
      const TitleAndWidget('#2 build 최적화, NG2', SelectorNg2View()),
      const TitleAndWidget('#3 build 최적화, Good', SelectorGoodView()),
      const TitleAndWidget('SampleBlocView', SampleBlocView()),
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
