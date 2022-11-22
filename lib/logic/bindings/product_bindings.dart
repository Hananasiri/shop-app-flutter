import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:hanan_shop/logic/controller/cart_controller.dart';
import 'package:hanan_shop/logic/controller/category_controller.dart';
import 'package:hanan_shop/logic/controller/product_controller.dart';


class ProductBinding extends Bindings{

    @override
 void dependencies (){
  Get.put(ProductController());
  Get.lazyPut(()=> CartController());
  Get.put(CategoryController());
    }
  }
