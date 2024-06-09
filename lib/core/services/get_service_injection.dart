import 'package:get_it/get_it.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/data_source/Ilogin_source.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/data_source/login_source.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/repository/login_repo.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/repository/IloginRepo.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/useCase/login_usecase.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Presentation/bloc/bloc_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Blocs
  sl.registerFactory(() => LoginBloc(loginUseCase: sl()));
  print('LoginBloc registered');

  // UseCases
  sl.registerFactory(() => LoginUseCase(sl()));
  print('LoginUseCase registered');

  // Repos
  sl.registerFactory<ILoginRepo>(() => LoginRepo(sl()));
  print('ILoginRepo registered');

  // Sources
  sl.registerLazySingleton(() => LoginSource());
  print('ILoginSource registered');
}
