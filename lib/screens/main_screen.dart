import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanan_shop/routes/routes.dart';
import 'package:hanan_shop/utils/theme.dart';

import '../logic/controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
 // final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Obx((){
      return SafeArea(
        child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar: AppBar(
            elevation: 0,
            leading: Container(),
            actions: [
              IconButton(onPressed: () {
                Get.toNamed(Routes.cartScreen);
                // Get.isDarkMode
                //     ? Get.changeThemeMode(ThemeMode.light)
                //     : Get.changeThemeMode(ThemeMode.dark);
              },
                icon: Image.asset('assets/images/shop.png'),
              )
            ],
            backgroundColor: Get.isDarkMode ? mainColor : mainColor,

            title: Text(controller.title[controller.currentIndex.value]),
            centerTitle: true,

          ),
          bottomNavigationBar: BottomNavigationBar( //هنا بداية البوتوم نافيقيشن بار
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? Colors.white : Colors.black ,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.category,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.category,
                  color: Get.isDarkMode ? Colors.white : Colors.black ,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? mainColor : pinkClr,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? Colors.white : Colors.black ,
                ),
                label: '',
              ),

              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? Colors.white : Colors.black ,
                ),
                label: '',
              ),
            ],

          onTap: (index) {
             controller.currentIndex.value = index;
          },
      ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs.value,
          ),
      ));
    },
    ),
    );
  }
}
