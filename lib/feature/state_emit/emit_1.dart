// // cubit
// class CounterCubit extends Cubit<ExamCubitState> {
//   CounterCubit() : super(const ExamCubitState(0));
//
//   void onTapIncrement() {
//     emit(ExamCubitState(state.counter + 1));
//   }
//
//   void onTapDecrement() {
//     emit(ExamCubitState(state.counter - 1));
//   }
//
//   void onTapReset() {
//     emit(const ExamCubitState(0));
//   }
// }
//
// // state
// class ExamCubitState {
//   const ExamCubitState(this.counter);
//   final int counter;
// }
//
// // view
// class CounterCubitView extends StatelessWidget {
//   const CounterCubitView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterCubit(),
//       child: Builder(
//         builder: (context) {
//           return Scaffold(
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text('cubit counter'),
//                 BlocBuilder<CounterCubit, ExamCubitState>(
//                   builder: (context, state) {
//                     return Text('${state.counter}', style: Theme.of(context).textTheme.headlineMedium);
//                   },
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     OutlinedButton(
//                       onPressed: context.read<CounterCubit>().onTapIncrement,
//                       child: const Icon(Icons.add),
//                     ),
//                     OutlinedButton(
//                       onPressed: context.read<CounterCubit>().onTapDecrement,
//                       child: const Icon(Icons.remove),
//                     ),
//                     OutlinedButton(
//                       onPressed: context.read<CounterCubit>().onTapReset,
//                       child: const Icon(Icons.refresh),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
