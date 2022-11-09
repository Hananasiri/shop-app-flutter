import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          InkWell(
            onTap: (){},
            child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Get.isDarkMode ? Image.asset('/Users/hananasiri/Desktop/hanan-shop/assets/images/check.png')
                : Icon(Icons.done , color: pinkClr),
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
                  underLine: TextDecoration.underline),


            ],
          )

        ],
      );
  }
}
