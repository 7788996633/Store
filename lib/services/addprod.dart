import 'package:http/http.dart' as http;

class AddPr{

Future<void> addPr() async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://fakestoreapi.com/products'));
    request.fields.addAll({
      'title': ' test product',
      'price': ' 13.5',
      'description': ' lorem ipsum set',
      'image': ' https://i.pravatar.cc',
      'category': ' electronic'
    });


}
}