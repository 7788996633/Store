import 'package:store/models/product.dart';
import 'package:store/services/allproducts.dart';

class ProductRepository {
  Future<List<Product>> getAllProducts() async {
    final pr = await AllProducts().getAllProducts();
    return pr.map((e) => Product.fromJson(e)).toList();
  }
}
