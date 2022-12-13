
import 'package:flutter_project_template/view/HomePage.dart';
import 'package:flutter_project_template/view/RegisterPage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/initials_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/register_binding.dart';
import '../view/loginPage.dart';
import 'app_route.dart';

abstract class AppPage{
  static final pages = [

    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),

    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: InitialsBinding(),
    ),

  ];
}