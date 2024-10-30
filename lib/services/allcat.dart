import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategories {
  Future<List> getAllCat() async {
    var request = http.Request(
        'GET', Uri.parse('https://fakestoreapi.com/products/categories'));
    List<String> data = jsonDecode(request.body);
    return data;
  }
}
