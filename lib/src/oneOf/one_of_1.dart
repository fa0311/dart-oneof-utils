import 'package:one_of/one_of.dart';

extension OneOf1Extension<T0> on OneOf1<T0> {
  T0 get asT0 => value;
  T0? get orT0 => asT0;

  TResult when<TResult extends Object?>({
    required TResult Function(T0) t0,
  }) {
    return t0(asT0);
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T0)? t0,
  }) {
    return t0 == null ? null : t0(asT0);
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T0)? t0,
    required TResult Function() orElse,
  }) {
    return t0 == null ? orElse() : t0(asT0);
  }
}
