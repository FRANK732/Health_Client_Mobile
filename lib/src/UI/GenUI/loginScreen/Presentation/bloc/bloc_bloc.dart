import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/useCase/login_usecase.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class LoginBloc extends Bloc<BlocEvent, LoginState> {
  LoginBloc({required LoginUseCase loginUseCase})
      : _loginUseCase = loginUseCase,
        super(BlocInitial()) {
    // on<BlocEvent>();
    on<LoginButtonPressed>(_login);
  }

  final LoginUseCase _loginUseCase;

  Future<void> _login(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    try {
      emit(LoginLoading());
      final loginResult = await _loginUseCase(
          LoginParams(email: event.email, password: event.password));
      loginResult.fold((l) => LoginError(), (r) => emit(LoginSucces()));
    } catch (errors) {
      emit(LoginError());
    }
  }
}
