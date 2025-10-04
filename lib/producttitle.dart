import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

// ignore: must_be_immutable
class ProductTitle extends StatelessWidget {
  ProductTitle({
    super.key,
    required this.name,
    required this.category,
    required this.rating,
    required this.reviewNumber,
  });

  String name;
  String category;
  double rating;
  int reviewNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 74, 50, 39),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 74, 50, 39),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Icon(
                      Icons.delivery_dining,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedCoffeeBeans,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Icon(
                      Icons.shopping_bag,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.star, color: const Color.fromARGB(255, 221, 175, 180)),
              Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                  Text(
                    '(${reviewNumber.toStringAsFixed(0)})',
                    style: TextStyle(fontSize: 14,
                  color: Color.fromARGB(255, 74, 50, 39)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
