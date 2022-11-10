import "package:get/get.dart";

class AuthController extends GetxController {

  bool isVisibilty = false; // هنا نستخدمها مع الباسوورد
  bool isCheckBox = false; //هنا مع التشك بوكس

  void visibilty(){
  isVisibilty = !isVisibilty;

  update(); //هنا معناته استمع للفنكشن تشبه الليسنر وتستخدم مع GetxBuilder
}

  void checkBox(){
    isCheckBox = !isCheckBox;

    update(); //هنا معناته استمع للفنكشن تشبه الليسنر وتستخدم مع GetxBuilder
  }
}