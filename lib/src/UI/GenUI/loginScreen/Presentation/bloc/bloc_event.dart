part of 'bloc_bloc.dart';

@immutable
sealed class BlocEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class LoginButtonPressed extends BlocEvent {
  final String email;
  final String password;

  LoginButtonPressed({required this.email, required this.password});
}
