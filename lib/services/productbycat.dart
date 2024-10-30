// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/models/product.dart';

class PrBCa {
  Future<List<Product>> getprbycar(String catname) async {
    var request = http.Request('GET',
        Uri.parse('https://fakestoreapi.com/products/category/$catname'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      List<dynamic> data = jsonDecode(request.body);

      List<Product> productsbycat = [];
      for (int i = 0; i <= data.length; i++) {
        productsbycat.add(
          Product.fromJson(
            data[i],
          ),
        );
      }

      return productsbycat;
    } else {
      throw Exception("${response.statusCode}");
    }
  }
}
