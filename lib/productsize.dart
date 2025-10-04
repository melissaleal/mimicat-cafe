// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductSize extends StatelessWidget {
  ProductSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  "Size",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 74, 50, 39)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(75, 221, 175, 180),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(150, 221, 175, 180),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "S",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 74, 50, 39),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 74, 50, 39),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 74, 50, 39),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "M",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(75, 221, 175, 180),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(150, 221, 175, 180),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "L",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 74, 50, 39),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
