import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/logic/controller/auth_controller.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key}) : super(key: key);
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder:(_) {
      return  Row(
          children: [
          InkWell(
          onTap: (){
            controller.checkBox();
          },
      child: Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
      ),
      child:controller.isCheckBox
      ? Get.isDarkMode
          ? Image.asset('/Users/hananasiri/Desktop/hanan-shop/assets/images/check.png')
          : Icon(Icons.done , color: pinkClr,)
          : Container(),
      ),
      ),
      const SizedBox(
      width: 10,
      ),
      Row(
      children: [
      TextUtils(fontSize: 16,
      fontWeight: FontWeight.normal,
      text: "I accept  ",
      color: Get.isDarkMode ? Colors.black : Colors.white,
      underLine: TextDecoration.none),
      TextUtils(fontSize: 16,
      fontWeight: FontWeight.normal,
      text: "terms & conditions",
      color: Get.isDarkMode ? Colors.black : Colors.white,
      underLine: TextDecoration.underline
      ),
      ],
      ),
      ],
      );
    });
  }
}
