import 'package:flutter/material.dart';
import '../atoms/atoms.dart';

class AppSnackNotification {
  static void notification(BuildContext context, String message) {
     ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: AppText(message, style : AppTextStyle.category),
          backgroundColor: Colors.green,
        ),
      );
  }
}