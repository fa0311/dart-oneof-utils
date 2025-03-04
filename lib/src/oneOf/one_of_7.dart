import 'package:dart_oneof_utils/src/utils.dart';
import 'package:one_of/one_of.dart';

extension OneOf7Extension<T0, T1, T2, T3, T4, T5, T6>
    on OneOf7<T0, T1, T2, T3, T4, T5, T6> {
  T0? get orT0 => typeIndex == 0 ? value as T0 : null;
  T1? get orT1 => typeIndex == 1 ? value as T1 : null;
  T2? get orT2 => typeIndex == 2 ? value as T2 : null;
  T3? get orT3 => typeIndex == 3 ? value as T3 : null;
  T4? get orT4 => typeIndex == 4 ? value as T4 : null;
  T5? get orT5 => typeIndex == 5 ? value as T5 : null;
  T6? get orT6 => typeIndex == 6 ? value as T6 : null;

  TResult when<TResult extends Object?>({
    required TResult Function(T0) t0,
    required TResult Function(T1) t1,
    required TResult Function(T2) t2,
    required TResult Function(T3) t3,
    required TResult Function(T4) t4,
    required TResult Function(T5) t5,
    required TResult Function(T6) t6,
  }) {
    return whenBuilder([
      () => t0(asT0),
      () => t1(asT1),
      () => t2(asT2),
      () => t3(asT3),
      () => t4(asT4),
      () => t5(asT5),
      () => t6(asT6)
    ]);
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T0)? t0,
    TResult? Function(T1)? t1,
    TResult? Function(T2)? t2,
    TResult? Function(T3)? t3,
    TResult? Function(T4)? t4,
    TResult? Function(T5)? t5,
    TResult? Function(T6)? t6,
  }) {
    return whenBuilder([
      () => t0 == null ? null : t0(asT0),
      () => t1 == null ? null : t1(asT1),
      () => t2 == null ? null : t2(asT2),
      () => t3 == null ? null : t3(asT3),
      () => t4 == null ? null : t4(asT4),
      () => t5 == null ? null : t5(asT5),
      () => t6 == null ? null : t6(asT6)
    ]);
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T0)? t0,
    TResult Function(T1)? t1,
    TResult Function(T2)? t2,
    TResult Function(T3)? t3,
    TResult Function(T4)? t4,
    TResult Function(T5)? t5,
    TResult Function(T6)? t6,
    required TResult Function() orElse,
  }) {
    return whenBuilder([
      () => t0 == null ? orElse() : t0(asT0),
      () => t1 == null ? orElse() : t1(asT1),
      () => t2 == null ? orElse() : t2(asT2),
      () => t3 == null ? orElse() : t3(asT3),
      () => t4 == null ? orElse() : t4(asT4),
      () => t5 == null ? orElse() : t5(asT5),
      () => t6 == null ? orElse() : t6(asT6)
    ]);
  }
}
