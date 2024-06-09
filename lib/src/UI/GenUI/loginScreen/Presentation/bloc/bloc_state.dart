part of 'bloc_bloc.dart';

@immutable
sealed class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}

final class BlocInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSucces extends LoginState {}

final class LoginError extends LoginState {}
