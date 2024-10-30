import 'package:store/models/rating.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final Rating rating;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(jsonData) {
    return Product(
      id: jsonData['id'],
      title: jsonData['title'],
      price: 13,
      description: jsonData['description'],
      image: jsonData['image'],
      rating: Rating.fromJson(
        jsonData['rating'],
      ),
    );
  }
}
