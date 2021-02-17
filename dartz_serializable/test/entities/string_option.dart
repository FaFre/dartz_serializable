import 'package:dartz/dartz.dart';
import 'package:dartz_serializable/dartz_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_option.g.dart';

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
