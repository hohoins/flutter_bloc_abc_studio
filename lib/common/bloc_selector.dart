import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_abc_studio/common/sample_data.codegen.dart';

class BlocSelector2<B extends StateStreamable<S>, S, T1, T2> extends StatelessWidget {
  const BlocSelector2({
    super.key,
    this.bloc,
    required this.selector1,
    required this.selector2,
    required this.builder,
  });

  final B? bloc;
  final BlocWidgetSelector<S, T1> selector1;
  final BlocWidgetSelector<S, T2> selector2;
  final Function(BuildContext context, T1 state1, T2 state2) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, SampleData2<T1, T2>>(
      bloc: bloc,
      selector: (state) {
        return SampleData2(
          selector1(state),
          selector2(state),
        );
      },
      builder: (context, state) => builder(context, state.t1, state.t2),
    );
  }
}

class BlocSelector3<B extends StateStreamable<S>, S, T1, T2, T3> extends StatelessWidget {
  const BlocSelector3({
    super.key,
    this.bloc,
    required this.selector1,
    required this.selector2,
    required this.selector3,
    required this.builder,
  });

  final B? bloc;
  final BlocWidgetSelector<S, T1> selector1;
  final BlocWidgetSelector<S, T2> selector2;
  final BlocWidgetSelector<S, T3> selector3;
  final Function(BuildContext context, T1 state1, T2 state2, T3 state3) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, SampleData3<T1, T2, T3>>(
      bloc: bloc,
      selector: (state) {
        return SampleData3(
          selector1(state),
          selector2(state),
          selector3(state),
        );
      },
      builder: (context, state) => builder(context, state.t1, state.t2, state.t3),
    );
  }
}

class BlocSelector4<B extends StateStreamable<S>, S, T1, T2, T3, T4> extends StatelessWidget {
  const BlocSelector4({
    super.key,
    this.bloc,
    required this.selector1,
    required this.selector2,
    required this.selector3,
    required this.selector4,
    required this.builder,
  });

  final B? bloc;
  final BlocWidgetSelector<S, T1> selector1;
  final BlocWidgetSelector<S, T2> selector2;
  final BlocWidgetSelector<S, T3> selector3;
  final BlocWidgetSelector<S, T4> selector4;
  final Function(BuildContext context, T1 state1, T2 state2, T3 state3, T4 state4) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, SampleData4<T1, T2, T3, T4>>(
      bloc: bloc,
      selector: (state) {
        return SampleData4(
          selector1(state),
          selector2(state),
          selector3(state),
          selector4(state),
        );
      },
      builder: (context, state) => builder(context, state.t1, state.t2, state.t3, state.t4),
    );
  }
}

class BlocSelector5<B extends StateStreamable<S>, S, T1, T2, T3, T4, T5> extends StatelessWidget {
  const BlocSelector5({
    super.key,
    this.bloc,
    required this.selector1,
    required this.selector2,
    required this.selector3,
    required this.selector4,
    required this.selector5,
    required this.builder,
  });

  final B? bloc;
  final BlocWidgetSelector<S, T1> selector1;
  final BlocWidgetSelector<S, T2> selector2;
  final BlocWidgetSelector<S, T3> selector3;
  final BlocWidgetSelector<S, T4> selector4;
  final BlocWidgetSelector<S, T5> selector5;
  final Function(BuildContext context, T1 state1, T2 state2, T3 state3, T4 state4, T5 state5) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, SampleData5<T1, T2, T3, T4, T5>>(
      bloc: bloc,
      selector: (state) {
        return SampleData5(
          selector1(state),
          selector2(state),
          selector3(state),
          selector4(state),
          selector5(state),
        );
      },
      builder: (context, state) => builder(context, state.t1, state.t2, state.t3, state.t4, state.t5),
    );
  }
}

class BlocSelector6<B extends StateStreamable<S>, S, T1, T2, T3, T4, T5, T6> extends StatelessWidget {
  const BlocSelector6({
    super.key,
    this.bloc,
    required this.selector1,
    required this.selector2,
    required this.selector3,
    required this.selector4,
    required this.selector5,
    required this.selector6,
    required this.builder,
  });

  final B? bloc;
  final BlocWidgetSelector<S, T1> selector1;
  final BlocWidgetSelector<S, T2> selector2;
  final BlocWidgetSelector<S, T3> selector3;
  final BlocWidgetSelector<S, T4> selector4;
  final BlocWidgetSelector<S, T5> selector5;
  final BlocWidgetSelector<S, T6> selector6;
  final Function(BuildContext context, T1 state1, T2 state2, T3 state3, T4 state4, T5 state5, T6 state6) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, SampleData6<T1, T2, T3, T4, T5, T6>>(
      bloc: bloc,
      selector: (state) {
        return SampleData6(
          selector1(state),
          selector2(state),
          selector3(state),
          selector4(state),
          selector5(state),
          selector6(state),
        );
      },
      builder: (context, state) => builder(context, state.t1, state.t2, state.t3, state.t4, state.t5, state.t6),
    );
  }
}
