import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import '../molecules/molecules.dart';
import '../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;
  final VoidCallback onDelete;

  const ProductCard({super.key, 
    required this.product,
    required this.onAddToCart,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(children: [
        ProductIcon(icon: product.icon),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            children: [
            AppText(product.name, style: AppTextStyle.productName),
            AppText(product.category, style: AppTextStyle.category),
            AppPriceText(price: product.price, currency: 'PHP'),
            ],
          ),
        ),
        Column(children: [
          AppButton(label: 'Add to Cart', onPressed: onAddToCart),
          SizedBox(height: 6),
          IconButton(onPressed: onDelete, icon: Icon(Icons.delete), color: Colors.red),
        ],)
      ],)
    );
  }
}