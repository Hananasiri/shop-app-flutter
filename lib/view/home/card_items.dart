import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';
import 'package:hanan_shop/logic/controller/product_controller.dart';
class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);

  final controller = Get.find<ProductController>();


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: Get.isDarkMode ? pinkClr : mainColor,
          ),
        );
      }else {
        return  Expanded(
          child: GridView.builder(
              itemCount: controller.productList.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.8,
                mainAxisSpacing: 9.0,
                crossAxisSpacing: 6.0,
                maxCrossAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return buildCardItems(
                  image: controller.productList[index].image,
                );
              }),
        );

      }
    });
  }

  Widget buildCardItems({
  required String image,
}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {} ,
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                ),
                IconButton(
                  onPressed: () {} ,
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            Container( // المتواجدة فيه الصورة
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            child: Image.network(image,
              fit:BoxFit.fitHeight,
            ),
            ),


                Padding(
                  padding:  EdgeInsets.only(left: 15, right:15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                  Text("\$ 15",
                  style: TextStyle(
                      color: Colors.black,
                  fontWeight: FontWeight.bold,
                  ),
                  ),

                Container(
                  height: 20,
                  width: 45,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 3, right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils(fontSize: 13, fontWeight: FontWeight.bold,
                            text:"4.7", color: Colors.white,
                            underLine: TextDecoration.none),
                        Icon(Icons.star,
                          size: 13,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ),

                ),
              ],
            ),
                ),
          ],
        ),
      ),
    );
  }
}
