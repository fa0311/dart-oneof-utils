import 'package:dart_oneof_utils/dart_oneof_utils.dart';
import 'package:one_of/one_of.dart';

void main() {
  final oneOf = OneOf.fromValue2<int, String>(value: 42);
  print(oneOf.when(t0: (value) => value, t1: (value) => value.length));
}
