import 'package:dartz/dartz.dart';
import 'package:test/test.dart';

import 'entities/int_string_either.dart';

void main() {
  group('Either<int, String>', () {
    test('left', () {
      final leftEither = left<int, String>(42);

      final eitherInstance = IntStringEither(either: leftEither);
      final serialized = eitherInstance.toJson();
      final reserialized = IntStringEither.fromJson(serialized);

      expect(reserialized.either, equals(leftEither));
    });

    test('right', () {
      final rightEither = right<int, String>('yay');

      final eitherInstance = IntStringEither(either: rightEither);
      final serialized = eitherInstance.toJson();
      final reserialized = IntStringEither.fromJson(serialized);

      expect(reserialized.either, equals(rightEither));
    });
  });
}
