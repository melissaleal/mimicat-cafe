import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

// ignore: must_be_immutable
class ProductHeader extends StatelessWidget {
  ProductHeader({
    super.key,
    required this.name,
    required this.category,
    required this.rating,
    required this.reviews,
  });

  String name;
  String category;
  double rating;
  int reviews;

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
          ), // retornando o nome do produto que foi escolhido lá no mimicatcafe.dart
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
                    padding: const EdgeInsets.only(
                      top: 0,
                      left: 6,
                      right: 6,
                      bottom: 12,
                    ),
                    child: Icon(
                      Icons.delivery_dining,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      left: 6,
                      right: 6,
                      bottom: 12,
                    ),
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedCoffeeBeans,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      left: 6,
                      right: 6,
                      bottom: 12,
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      color: const Color.fromARGB(255, 74, 50, 39),
                    ),
                  ),
                ],
              ),
            ],
          ), // aqui, temos categoria e ícones referentes ao produto
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.star, color: const Color.fromARGB(255, 221, 175, 180)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 74, 50, 39),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        '(${reviews.toStringAsFixed(0)})',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 74, 50, 39),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
