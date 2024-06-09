import 'package:equatable/equatable.dart';

class ApiException extends Equatable implements Exception {
  const ApiException({required this.message, required this.statusCode});

  final String message;
  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class StorageException implements Exception {
  final String message;
  StorageException(this.message);

  @override
  String toString() => 'StorageException: $message';
}

class AuthenticationException implements Exception {
  final String message;
  AuthenticationException(this.message);

  @override
  String toString() => 'AuthenticationException: $message';
}
class NoDataException implements Exception {
  final String message;

  NoDataException(this.message);
}
