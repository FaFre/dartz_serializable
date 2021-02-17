import 'package:dartz/dartz.dart';
import 'package:test/test.dart';

import 'entities/string_option.dart';

void main() {
  group('Option<String>', () {
    test('some', () {
      final option = some('test');
      final stringOptionInstance = StringOption(option: option);
      final serialized = stringOptionInstance.toJson();
      final reserialized = StringOption.fromJson(serialized);

      expect(reserialized.option, equals(option));
    });

    test('none', () {
      final option = none<String>();
      final stringOptionInstance = StringOption(option: option);
      final serialized = stringOptionInstance.toJson();
      final reserialized = StringOption.fromJson(serialized);

      expect(reserialized.option, equals(option));
    });
  });
}
