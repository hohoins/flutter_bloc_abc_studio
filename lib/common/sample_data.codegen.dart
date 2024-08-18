import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_data.codegen.freezed.dart';

@Freezed(equal: true)
class SampleData2<T1, T2> with _$SampleData2 {
  const factory SampleData2(T1 t1, T2 t2) = _SampleData2;
}

@Freezed(equal: true)
class SampleData3<T1, T2, T3> with _$SampleData3 {
  const factory SampleData3(T1 t1, T2 t2, T3 t3) = _SampleData3;
}

@Freezed(equal: true)
class SampleData4<T1, T2, T3, T4> with _$SampleData4 {
  const factory SampleData4(T1 t1, T2 t2, T3 t3, T4 t4) = _SampleData4;
}

@Freezed(equal: true)
class SampleData5<T1, T2, T3, T4, T5> with _$SampleData5 {
  const factory SampleData5(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) = _SampleData5;
}

@Freezed(equal: true)
class SampleData6<T1, T2, T3, T4, T5, T6> with _$SampleData6 {
  const factory SampleData6(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) = _SampleData6;
}
