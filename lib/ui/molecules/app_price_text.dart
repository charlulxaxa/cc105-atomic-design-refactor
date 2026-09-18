import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class AppPriceText extends StatelessWidget {
  final double price;
  final String currency;

  const AppPriceText({
    required this.price,
    this.currency = 'PHP',
  });

  @override
  Widget build(BuildContext context) {
    return AppText('\$${currency} ${price.toStringAsFixed(2)}',style : AppTextStyle.price
    );
  }
}