import 'package:flutter/material.dart';
import '/productimage.dart';
import '/producttitle.dart';
import '/productdescription.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 175, 180),
        title: Image.asset(
          'assets/logo.png',
          height: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImage(
              image:
                'assets/whiskoffee.jpg'  
            ),
            ProductTitle(
              name: "Whiskoffee",
              category: "Ice/Hot",
              rating: 4.9,
              reviewNumber: 325,
            ),
            ProductDescription(description: ''),
          ],
        ),
      ),
    );
  }
}
