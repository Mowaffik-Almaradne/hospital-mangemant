import 'package:dartz/dartz.dart';
import 'package:hosptel_app/core/error/exception.dart';
import 'package:hosptel_app/core/error/failure.dart';
import 'package:hosptel_app/core/network/network_info.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';

class CheckNet<T> {
  NetworkInfo networkInformation =
      NetworkInfoImplemntes(InternetConnectionChecker());

  Future<Either<Failure, T>> checkNetResponse({
    required Future<Right<Failure, T>> Function() tryRight,
    Future<Right<Failure, T>> Function()? tryRightCach,
  }) async {
    if (await networkInformation.isConnected) {
      try {
        return await tryRight();
      } on ServerException catch (e) {
        return Left(ServerFailure(response: e.response));
      }
    } else {
      if (tryRightCach == null) {
        return Left(OfflineFailure());
      } else {
        try {
          return await tryRightCach();
        } on EmptyCacheException {
          return Left(OfflineFailure());
        }
      }
    }
  }
}
