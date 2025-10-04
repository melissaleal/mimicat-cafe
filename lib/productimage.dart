import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductImage extends StatelessWidget {
  ProductImage({super.key, required this.image});

  String image;

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        width: 400,
        height: 150,
        fit: BoxFit.cover,
      ),
    ),
  );
}
}
