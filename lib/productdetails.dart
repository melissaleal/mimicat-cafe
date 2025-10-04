import 'package:flutter/material.dart';
import 'productprice.dart';
import '/models/product.dart';
import 'productheader.dart';
import '/productimage.dart';
import '/productdescription.dart';
import '/productsize.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 175, 180),
        title: Image.asset('assets/logo.png', height: 35),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImage(image: product.productImage),
            ProductHeader(name: product.productName, category: product.productCategory, rating: product.productRating, reviews: product.productReviews),
            ProductDescription(description: product.productDescription),
            ProductSize(),
            ProductPrice(price: product.productPrice),
          ],
        ),
      ),
    );
  }
}
