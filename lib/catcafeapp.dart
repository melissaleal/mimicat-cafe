import 'package:flutter/material.dart';
import '/productdetails.dart';

class CatCafeApp extends StatelessWidget {
  const CatCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product",
      home: ProductDetails()
    );
  }
}
