// ignore_for_file: avoid_print

import 'package:store/helper/api.dart';

class AllProducts {
  Future<List> getAllProducts() async {
    var data = await Api().gett('https://fakestoreapi.com/products');
    try {
      print(data);
      return data;
    } on Exception catch (e) {
      print(e);
      return [];
    }
  }
}
