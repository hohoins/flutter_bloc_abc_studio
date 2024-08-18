import 'package:flutter/material.dart';
import 'package:flutter_bloc_abc_studio/common/sample_data.codegen.dart';
import 'package:flutter_bloc_abc_studio/feature/example_bloc/exam_bloc.dart';
import 'package:flutter_bloc_abc_studio/feature/example_bloc/exam_cubit.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_view.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_view.dart';

void main() {
  runApp(const MyApp());
}

final _screens = [
  const SampleData2('Sample Bloc', SampleBlocView()),
  const SampleData2('Sample Selector', SampleSelectorBlocView()),
  const SampleData2('example bloc', ExamBlocView()),
  const SampleData2('example cubit', ExamCubitView()),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: ListView.builder(
          itemCount: _screens.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_screens[index].t1}'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => _screens[index].t2));
              },
            );
          },
        ),
      ),
    );
  }
}
