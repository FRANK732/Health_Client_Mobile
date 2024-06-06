// ignore_for_file: prefer_const_constructors

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Presentation/login_screen.dart';
import 'package:health_moble_client/src/UI/RegistrationScreen/Presentation/registration_screen.dart';

class AppRoutes {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: "/login_screen",
        page: () => LoginScreen(),
        transition: Transition.fade),
    GetPage(
        name: "/registration_screen",
        page: () => RegistrationScreen(),
        transition: Transition.fade),
  ];
}
