import 'package:flutter/material.dart';
import 'package:store/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.curreProduct});
  final Product curreProduct;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: GridTile(
        footer: GridTileBar(
          subtitle: Text(
            "\$${curreProduct.price}",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black54,
          title: Text(
            curreProduct.title.substring(0,6),
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        child: Image(
          height: 350,
          width: 220,
          fit: BoxFit.fill,
          image: NetworkImage(
            curreProduct.image,
          ),
        ),
      ),
    );
  }
}
