import 'package:get/get.dart';
import 'package:hanan_shop/auth/login_screen.dart';
import 'package:hanan_shop/auth/signup_screen.dart';
import 'package:hanan_shop/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const welcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const loginScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () =>   signUpScreen(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
}
