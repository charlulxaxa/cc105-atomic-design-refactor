import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import 'app_price_text.dart';

class ProductCard extends StatelessWidget {
  final IconData productIcon;
  final String productName;
  final String productCategory;
  final double productPrice;
  final String? productDescription;
  final VoidCallback? onAddToCart;//SUBJECT TO CHANGE
  final VoidCallback? onDelete;//

  const ProductCard({super.key, 
    required this.productIcon,
    required this.productName, 
    required this.productCategory, 
    required this.productPrice, 
    this.productDescription, 
    this.onAddToCart, //CHANGE TO REQUIRED IF NEEDED
    this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        ProductIcon(icon: productIcon),
        SizedBox(width: 12),
        Expanded(
          child: Column(children: [
            AppText(productName, style: AppTextStyle.name),
            AppText(productCategory, style: AppTextStyle.category),
            if (productDescription != null)
              AppText(productDescription!, style: AppTextStyle.description),
            AppPriceText(price: productPrice, currency: 'PHP'),
          ],),
        ),
        Column(children: [
          AppButton(label: "Add to Cart", onPressed: onAddToCart!),
          AppIconButton(icon: Icons.delete, onPressed: onDelete!),
        ],)
      ],)
    );
  }
}