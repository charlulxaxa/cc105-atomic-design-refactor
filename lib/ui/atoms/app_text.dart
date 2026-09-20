// ATOM: pure presentation, no logic, no state — just props in, UI out.
import 'package:flutter/material.dart';

enum AppTextStyle { title, text,category,price,productName,description }

class AppText extends StatelessWidget {
  final String text;
  final AppTextStyle style;
  final Color? color;
  const AppText(this.text, {super.key, this.style = AppTextStyle.text, this.color});

  @override
  Widget build(BuildContext context) {
    final textStyle = switch (style) {
      AppTextStyle.title => TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color ?? Colors.black87),
      AppTextStyle.text => TextStyle(fontSize: 16, color: color ?? Colors.white),
      AppTextStyle.category => TextStyle(fontSize: 13, color: Colors.grey.shade600),
      AppTextStyle.price => TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.indigo),
      AppTextStyle.productName => TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      AppTextStyle.description => TextStyle(fontSize: 14, color: Colors.grey.shade600),
    };
    
    return Text(text, style: textStyle);
  }
}
