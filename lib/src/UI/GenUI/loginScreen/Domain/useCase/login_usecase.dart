import 'package:health_moble_client/core/Utils/typedof.dart';
import 'package:health_moble_client/core/useCases/Tusecase.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/entities/loginResponse.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/repository/IloginRepo.dart';

class LoginUseCase extends UseCaseWithParams<LoginResponse, LoginParams> {
  LoginUseCase(this.loginRepo);

  final ILoginRepo loginRepo;

  @override
  ResultFuture<LoginResponse> call(LoginParams params) async =>
      loginRepo.login(email: params.email, password: params.password);
}

class LoginParams {
  LoginParams({required this.email, required this.password});

  final String email;
  final String password;
}
