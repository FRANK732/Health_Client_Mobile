import 'package:equatable/equatable.dart';
import 'package:health_moble_client/core/errors/exceptions.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});

  final String message;
  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class ApiFailure extends Failure {
  const ApiFailure({required super.message, required super.statusCode});

  const ApiFailure.fromException(ApiException exception)
      : this(message: "Unknown Error", statusCode: 500);
}

// class CacheFailure extends Failure {
//   const CacheFailure({required super.message, required super.statusCode});

//   const CacheFailure.fromException(CacheFailure exception)
//       : this(message: "Unknown Error", statusCode: 500);
// }
