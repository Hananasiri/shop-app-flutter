import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';

import 'cart/cart_product_card.dart';
import 'cart/empty_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar: AppBar(
            title: Text(
              "Cart items"),
            elevation: 0,
            backgroundColor: Get.isDarkMode ? darkGreyClr: mainColor,
            centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.backspace),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.separated(
                      itemBuilder: (context,index){
                       return CartProductCard();
                      },
                      separatorBuilder: (context, index) => SizedBox(
                       height: 20,
                      ), itemCount: 1,
                  )),
              ],
            )
          )
        ));
  }
}
