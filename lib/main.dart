import 'package:flutter/material.dart';
import 'package:flutter_bloc_abc_studio/common/sample_data.codegen.dart';
import 'package:flutter_bloc_abc_studio/feature/sample/sample_view.dart';
import 'package:flutter_bloc_abc_studio/feature/sample_selector/sample_selector_view.dart';

void main() {
  runApp(const MyApp());
}

const _screens = [
  SampleData2('Sample Bloc', SampleBlocView()),
  SampleData2('Sample Selector', SampleSelectorBlocView()),
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
