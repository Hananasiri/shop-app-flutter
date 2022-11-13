import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/category_screen.dart';
import '../../screens/favorites_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/settings_screen.dart';

class MainController extends GetxController {//هذا الملف تابع للبوتوم بار نافيقيشن فيه تدفق معلومات جاي من الفاير بيس فلازم نتسخدم obs
  RxInt currentIndex = 0.obs; //Rx نوع المتغير يصير obs مع ال

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Hanan Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
