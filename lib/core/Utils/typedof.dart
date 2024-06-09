import 'package:dartz/dartz.dart';
import 'package:health_moble_client/core/errors/failure.dart';

typedef VoidFuture = Future<Either<Failure, void>>;

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef FailedVoid<T> = VoidFuture;

typedef DataMapping = Map<String, dynamic>;
