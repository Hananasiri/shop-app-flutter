import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/logic/controller/cart_controller.dart';
import 'package:hanan_shop/utils/theme.dart';

import 'cart/cart_product_card.dart';
import 'cart/cart_total.dart';
import 'cart/empty_cart.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              title: Text("Cart items"),
              elevation: 0,
              backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    controller.clearAllProducts();
                  },
                  icon: Icon(Icons.backspace),
                ),
              ],
            ),
            body: Obx(() {
              if (controller.productMap.isEmpty) {
                return EmptCart();
              } else {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 600,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CartProductCard(
                              index: index,
                              productModels:
                                  controller.productMap.keys.toList()[index],
                              quantity:
                                  controller.productMap.values.toList()[index],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20),
                          itemCount: controller.productMap.length,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: CardTotal(),
                      ),
                    ],
                  ),
                );
              }
            })));
  }
}
