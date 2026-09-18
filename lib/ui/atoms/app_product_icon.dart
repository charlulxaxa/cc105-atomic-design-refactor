import 'package:flutter/material.dart';

class ProductIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const ProductIcon({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? Theme.of(context).iconTheme.color,
    );
  }
}