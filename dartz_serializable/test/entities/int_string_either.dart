import 'package:dartz/dartz.dart';
import 'package:dartz_serializable/dartz_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'int_string_either.g.dart';

class IntStringEitherConverter extends EitherConverter<int, String> {
  const IntStringEitherConverter();
}

@JsonSerializable()
class IntStringEither {
  @IntStringEitherConverter()
  final Either<int, String> either;
  IntStringEither({required this.either});

  factory IntStringEither.fromJson(Map<String, dynamic> json) =>
      _$IntStringEitherFromJson(json);
  Map<String, dynamic> toJson() => _$IntStringEitherToJson(this);
}
