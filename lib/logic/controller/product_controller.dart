import 'package:get/get.dart';
import 'package:hanan_shop/model/product_model.dart';
import '../../services/product_services.dart';

class ProductController extends GetxController {
  var productList = <ProductModels>[].obs;

  @override


  void onInit() { //الميثود الي تستدعي البيانات من API
    super.onInit();
    getProducts();
  }

  var isLoading = true.obs;

  void getProducts() async {
    var products = await ProductServices.getProduct();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
