import 'package:spotify_clone/core/error/failures/failures.dart';
import 'package:dartz/dartz.dart';

import '../error/failures/invalid_input_failure.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String numberString) {
    try {
      final parsedNumber = int.parse(numberString);

      if (parsedNumber < 0) throw const FormatException();

      return Right(parsedNumber);
    } on FormatException {
      final failure = InvalidInputFailure();

      return Left(failure);
    }
  }
}