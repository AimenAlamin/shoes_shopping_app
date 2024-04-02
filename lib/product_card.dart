import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image});
  final String title;
  final double price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(225, 218, 215, 220),
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$ $price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          //Image.asset(image,height:175)
          Center(
            child: Image(
              image: AssetImage(image),
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
