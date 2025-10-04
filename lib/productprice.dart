// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductPrice extends StatelessWidget {
  ProductPrice({super.key, required this.price});

  double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(150, 74, 50, 39),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'R\$${price.toStringAsFixed(0)}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 221, 175, 180),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: 275,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 175, 180),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('Buy now')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
