import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hanan_shop/firebase_options.dart';
import 'package:hanan_shop/logic/controller/theme_controller.dart';
import 'package:hanan_shop/routes/routes.dart';
import 'package:hanan_shop/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:hanan_shop/utils/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hanan shop',
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.light,
        darkTheme: ThemesApp.dark,
        themeMode: ThemeController().themeDataGet,
        initialRoute: FirebaseAuth.instance.currentUser != null ||
            GetStorage().read<bool>('auth') == true
            ? AppRoutes.mainScreen
            : AppRoutes.welcome,
      getPages: AppRoutes.routes,
      );
  }
}