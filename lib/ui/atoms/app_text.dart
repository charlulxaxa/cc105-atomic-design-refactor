// ATOM: pure presentation, no logic, no state — just props in, UI out.
import 'package:flutter/material.dart';

enum AppTextStyle { title, body, caption,category,price,name,description }

class AppText extends StatelessWidget {
  final String text;
  final AppTextStyle style;

  const AppText(this.text, {super.key, this.style = AppTextStyle.body});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final textStyle = switch (style) {
      AppTextStyle.title => theme.titleMedium,
      AppTextStyle.body => theme.bodyMedium,
      AppTextStyle.caption => theme.bodySmall,
      AppTextStyle.category => TextStyle(fontSize: 13, color: Colors.grey.shade600),
      AppTextStyle.price => TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.indigo),
      AppTextStyle.name => TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      AppTextStyle.description => TextStyle(fontSize: 14, color: Colors.grey.shade600),
    };
    
    return Text(text, style: textStyle);
  }
}
