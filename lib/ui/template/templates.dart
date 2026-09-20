import 'package:flutter/material.dart';

class ProductTemplate extends StatelessWidget {
  final PreferredSizeWidget appbar;
  final Widget searchbar;
  final List<Widget> productCard;
  const ProductTemplate({super.key,required this.appbar, required this.searchbar,required this. productCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: productCard.isEmpty ?
          const Center(child: Text('No products to show'))
          : GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.8,
              children: productCard,
            ),
    );
  }
}