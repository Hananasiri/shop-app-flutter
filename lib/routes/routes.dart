import 'package:get/get.dart';
import 'package:hanan_shop/auth/forgot_screen.dart';
import 'package:hanan_shop/auth/login_screen.dart';
import 'package:hanan_shop/auth/signup_screen.dart';
import 'package:hanan_shop/logic/bindings/auth_binding.dart';
import 'package:hanan_shop/screens/main_screen.dart';
import 'package:hanan_shop/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () =>  LoginScreen(),
      binding: AuthBinding(), // اضيفها عشان ماتصير اخطاء مع القيتكس
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () =>   SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () =>   ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () =>   MainScreen(),
      binding: AuthBinding(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
}
