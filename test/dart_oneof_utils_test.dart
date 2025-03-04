import 'package:dart_oneof_utils/dart_oneof_utils.dart';
import 'package:one_of/one_of.dart';
import 'package:test/test.dart';

void main() {
  group('or', () {
    test('1', () {
      final oneOf = OneOf.fromValue2<int, String>(value: 42);
      expect(oneOf.orT0, 42);
      expect(oneOf.orT1, null);
    });

    test('2', () {
      final oneOf = OneOf.fromValue2<int, String>(value: "42");
      expect(oneOf.orT0, null);
      expect(oneOf.orT1, "42");
    });
  });

  group('when', () {
    test('1', () {
      final oneOf = OneOf.fromValue2<int, String>(value: 42);
      final result = oneOf.when(
        t0: (int value) => value,
        t1: (String value) => value.length,
      );
      expect(result, 42);
    });

    test('2', () {
      final oneOf = OneOf.fromValue2<int, String>(value: "42");
      final result = oneOf.when(
        t0: (int value) => value,
        t1: (String value) => value.length,
      );
      expect(result, 2);
    });
  });
  group('whenOrNull', () {
    test('1', () {
      final oneOf = OneOf.fromValue2<int, String>(value: 42);
      final result = oneOf.whenOrNull(
        t0: (int value) => value,
        t1: (String value) => value.length,
      );
      expect(result, 42);
    });
    test('2', () {
      final oneOf = OneOf.fromValue2<int, String>(value: "42");
      final result = oneOf.whenOrNull(
        t0: (int value) => value,
        t1: (String value) => value.length,
      );
      expect(result, 2);
    });

    test('3', () {
      final oneOf = OneOf.fromValue2<int, String>(value: 42);
      final result = oneOf.whenOrNull(
        t1: (String value) => value.length,
      );
      expect(result, null);
    });
  });

  group('maybeWhen', () {
    test('1', () {
      final oneOf = OneOf.fromValue2<int, String>(value: 42);
      final result = oneOf.maybeWhen(
        t0: (int value) => value,
        orElse: () => 0,
      );
      expect(result, 42);
    });
    test('2', () {
      final oneOf = OneOf.fromValue2<int, String>(value: "42");
      final result = oneOf.maybeWhen(
        t0: (int value) => value,
        orElse: () => 0,
      );
      expect(result, 0);
    });
  });
}
