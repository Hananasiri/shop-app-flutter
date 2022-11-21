import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

import '../view/home/card_items.dart';
import '../view/home/search_text_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: context.theme.backgroundColor,
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Get.isDarkMode? darkGreyClr : mainColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft:Radius.circular(20),//الحواف من اسفل
                    bottomRight:Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20 , right: 20),// هنا مسافات من البدايه
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          text: 'Find your',
                          color: Colors.white,
                          underLine: TextDecoration.none),
                      SizedBox(
                       height: 5,
                      ),
                      TextUtils(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          text: 'INSPIRATION',
                          color: Colors.white,
                          underLine: TextDecoration.none),
                      SizedBox(
                        height: 10,
                      ),
                      SearchFormText(),
                    ],
                  ),
                ),
              ),
               SizedBox(
              height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft, //رحت عند التكست يوتيلز و حطيت اضافة وجيت وبعدين كتبتAlign
                  child: TextUtils(fontSize: 20,
                      fontWeight: FontWeight.w500,
                      text: "Categories",
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      underLine: TextDecoration.none),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CardItems(),


            ],
          )
        ),
    );
  }
}
