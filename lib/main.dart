// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/app_rioute.dart';
import 'package:health_moble_client/core/services/get_service_injection.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Presentation/bloc/bloc_bloc.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Presentation/login_screen.dart';
import 'package:health_moble_client/src/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
              create: (context) => sl<LoginBloc>(),
            )
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health Mobile Client',
            getPages: AppRoutes.routes,
            theme: TAppTheme.lightTheme,
            darkTheme: TAppTheme.darkTheme,
            themeMode: ThemeMode.light,
            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
