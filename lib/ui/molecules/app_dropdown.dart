import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class AppDropdown extends StatelessWidget {
  final String label;
  final List<String> category;
  final ValueChanged<String?>? onChanged;
  const AppDropdown({super.key, required this.label, required this.category, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
      ),
      items: category.map((cat) => DropdownMenuItem(value: cat, child: AppText(cat, style: AppTextStyle.category)))
                        .toList(),
      onChanged: onChanged,
    );
  }
}