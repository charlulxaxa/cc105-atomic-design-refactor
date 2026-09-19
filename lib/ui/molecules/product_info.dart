import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import '../models/product_model.dart';
import '../molecules/app_price_text.dart';
class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            AppText(product.name, style: AppTextStyle.name),
            AppText(product.category, style: AppTextStyle.category),
            if (product.description != null)
              AppText(product.description!, style: AppTextStyle.description),
            AppPriceText(price: product.price, currency: 'PHP'),
          ],
    );
  }
}