import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.detailsProduct});
  final Map<String, Object> detailsProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            detailsProduct["title"] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(detailsProduct["imageUrl"] as String),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(225, 232, 239, 1),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "\$${detailsProduct['price']}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (detailsProduct["sizes"] as List<int>).length,
                    itemBuilder: (context, index) {
                      final size =
                          (detailsProduct["sizes"] as List<int>)[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(size.toString()),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
