import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dartz_serializable/dartz_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

class StringOptionConverter extends OptionConverter<String> {
  const StringOptionConverter();
}

@JsonSerializable()
class StringOption {
  @StringOptionConverter()
  final Option<String> option;
  StringOption({this.option = const None<String>()});

  factory StringOption.fromJson(Map<String, dynamic> json) =>
      _$StringOptionFromJson(json);
  Map<String, dynamic> toJson() => _$StringOptionToJson(this);
}

void main() {
  final option = some('test');
  final stringOptionInstance = StringOption(option: option);
  final serialized = stringOptionInstance.toJson();
  final reserialized = StringOption.fromJson(serialized);

  print('Json: ${jsonEncode(serialized)}');
  print('Reserialized Option equals: ${reserialized.option == option}');
}
