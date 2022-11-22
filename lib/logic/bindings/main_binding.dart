

import 'package:get/get.dart';
import 'package:hanan_shop/logic/controller/main_controller.dart';

import '../controller/setting_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
   // Get.put(PayMentController(), permanent: true);
  }

}