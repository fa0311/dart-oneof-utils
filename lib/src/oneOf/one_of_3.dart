import 'package:dart_oneof_utils/src/utils.dart';
import 'package:one_of/one_of.dart';

extension OneOf3Extension<T0, T1, T2> on OneOf3<T0, T1, T2> {
  T0? get orT0 => typeIndex == 0 ? value as T0 : null;
  T1? get orT1 => typeIndex == 1 ? value as T1 : null;
  T2? get orT2 => typeIndex == 2 ? value as T2 : null;

  TResult when<TResult extends Object?>({
    required TResult Function(T0) t0,
    required TResult Function(T1) t1,
    required TResult Function(T2) t2,
  }) {
    return whenBuilder([() => t0(asT0), () => t1(asT1), () => t2(asT2)]);
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T0)? t0,
    TResult? Function(T1)? t1,
    TResult? Function(T2)? t2,
  }) {
    return whenBuilder([
      () => t0 == null ? null : t0(asT0),
      () => t1 == null ? null : t1(asT1),
      () => t2 == null ? null : t2(asT2)
    ]);
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T0)? t0,
    TResult Function(T1)? t1,
    TResult Function(T2)? t2,
    required TResult Function() orElse,
  }) {
    return whenBuilder([
      () => t0 == null ? orElse() : t0(asT0),
      () => t1 == null ? orElse() : t1(asT1),
      () => t2 == null ? orElse() : t2(asT2)
    ]);
  }
}
