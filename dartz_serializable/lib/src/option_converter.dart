import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

class OptionConverter<T>
    implements JsonConverter<Option<T>, Map<String, dynamic>> {
  const OptionConverter();

  @override
  Option<T> fromJson(Map<String, dynamic> json) =>
      (json.containsKey('value')) ? optionOf<T>(json['value']) : none();

  @override
  Map<String, dynamic> toJson(Option<T> option) =>
      option.fold<Map<String, dynamic>>(() => {}, (value) => {'value': value});
}
