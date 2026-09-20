import 'package:flutter/material.dart';
import '../atoms/atoms.dart';

class AppSnackNotification {
  static void notification(BuildContext context, String message, [Color? bgC]) {
     ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: AppText(message, size: 13, style: AppTextStyle.text),
          backgroundColor: bgC,
        ),
      );
  }
}