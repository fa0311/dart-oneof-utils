# dart_oneof_utils

A package that contains utilities for https://github.com/Bdaya-Dev/dart-oneof.

## Usage

```dart
final oneOf = OneOf.fromValue2<int, String>(value: 42);
print(oneOf.orT0); // 42
print(oneOf.orT1); // null
print(oneOf.when(t0: (value) => value, t1: (value) => -1)); // 42
print(oneOf.whenOrNull(t1: (value) => value)); // null
print(oneOf.maybeWhen(t0: (value) => value, orElse: () => -1)); // 42
```

```dart
final oneOf = OneOf.fromValue2<int, String>(value: '42');
print(oneOf.orT0); // null
print(oneOf.orT1); // 42
print(oneOf.when(t0: (value) => value, t1: (value) => -1)); // -1
print(oneOf.whenOrNull(t1: (value) => value)); // 42
print(oneOf.maybeWhen(t0: (value) => value, orElse: () => -1)); // -1
```
