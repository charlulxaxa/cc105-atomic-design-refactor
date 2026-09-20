import 'package:flutter/material.dart';
import '../atoms/atoms.dart';

class BarSearch extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const BarSearch({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText("Search Products", style: AppTextStyle.title),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: "Type a product name"),
        ),
      ]
    );
  }
}

