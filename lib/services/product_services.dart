import 'package:http/http.dart' as http;

import '../model/product_model.dart';
import '../utils/my_string.dart'; //هنا از عشان استخدم المكتبة مباشرة وتتفاعل معي فالكود



class ProductServices{


  static Future<List<ProductModels>> getProduct() async { //static اقدر اوصله من اي مكان فالمشروع
    var response = await http.get(Uri.parse('$baseUrl/products'));
    if(response.statusCode == 200){
      var jsonData = response.body;
      return productModelsFromJson(jsonData); //  النتيجة الي جت من الاي بي اي سجلناها في متغير اسمه ريسبونس بعدين اعطيناها شرط اذا يساوي ٢٠٠يطلع نتيجة للبودي
    }else {
      return throw Exception("Failed to load product");
    }
  }


}