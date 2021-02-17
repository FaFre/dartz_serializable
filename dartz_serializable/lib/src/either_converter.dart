import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

class EitherConverter<L, R>
    implements JsonConverter<Either<L, R>, Map<String, dynamic>> {
  const EitherConverter();

  @override
  Either<L, R> fromJson(Map<String, dynamic> json) {
    assert(json.length == 1);

    switch (json.keys.first) {
      case 'left':
        return left<L, R>(json.values.first);
      case 'right':
        return right<L, R>(json.values.first);
      default:
        throw TypeError();
    }
  }

  @override
  Map<String, dynamic> toJson(Either<L, R> either) =>
      either.fold<Map<String, dynamic>>(
          (left) => {'left': left}, (right) => {'right': right});
}
