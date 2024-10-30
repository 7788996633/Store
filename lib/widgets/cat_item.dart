import 'package:flutter/material.dart';

class CatItem extends StatelessWidget {
  const CatItem({super.key, required this.curreProduct});
  final String curreProduct;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Card(
        child: Text(
          curreProduct.substring(0, 6),
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
