import 'package:flutter/material.dart';
import '/productdetails.dart';
import '/data/data.dart';

class CatCafeApp extends StatelessWidget {
  const CatCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product",
      home: ProductDetails(product: product[0]),
    );
  }
}
