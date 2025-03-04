import 'package:dart_oneof_utils/src/utils.dart';
import 'package:one_of/one_of.dart';

extension OneOf2Extension<T0, T1> on OneOf2<T0, T1> {
  T0? get orT0 => typeIndex == 0 ? value as T0 : null;
  T1? get orT1 => typeIndex == 1 ? value as T1 : null;

  TResult when<TResult extends Object?>({
    required TResult Function(T0) t0,
    required TResult Function(T1) t1,
  }) {
    return whenBuilder([() => t0(asT0), () => t1(asT1)]);
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T0)? t0,
    TResult? Function(T1)? t1,
  }) {
    return whenBuilder([
      () => t0 == null ? null : t0(asT0),
      () => t1 == null ? null : t1(asT1)
    ]);
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T0)? t0,
    TResult Function(T1)? t1,
    required TResult Function() orElse,
  }) {
    return whenBuilder([
      () => t0 == null ? orElse() : t0(asT0),
      () => t1 == null ? orElse() : t1(asT1)
    ]);
  }
}
