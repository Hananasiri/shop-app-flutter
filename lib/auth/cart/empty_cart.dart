import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/routes/routes.dart';
import 'package:hanan_shop/utils/theme.dart';

class EmptCart extends StatelessWidget {
  const EmptCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(

            Icons.shopping_cart,
            size: 150,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "    your cart is ",
              style: TextStyle(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "Empty ",
              style: TextStyle(
                color: Get.isDarkMode ? pinkClr : mainColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
          SizedBox(
            height: 10,
          ),
          Text("add items to get Started",
          style: TextStyle(
            color: Get.isDarkMode ? pinkClr : mainColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),

          SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                    primary: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  onPressed: (){
                Get.toNamed(Routes.mainScreen);
              }, child: Text("Go to home",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),))
        ],
      ),
    );
  }
}
