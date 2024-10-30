import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> gett(String url) async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('${response.statusCode}');
    }
  }
}
