import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/logic/controller/cart_controller.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

class CardTotal extends StatelessWidget {
  CardTotal({Key? key}) : super(key: key);

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Container(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Column(
                children: [
                  TextUtils(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: "Total", color: Colors.grey,
                    underLine: TextDecoration.none,
                  ),
                  Text("\$${controller.total}",
                    style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: 20,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                    primary: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("check out", style: TextStyle(
                          fontSize: 20
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.shopping_cart),
                    ],
                  ))
            ],
          ),
        ),
    );
  }
}
