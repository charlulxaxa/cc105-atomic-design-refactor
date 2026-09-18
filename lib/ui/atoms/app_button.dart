import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? bgcolor;
  final Color? fgcolor;
  final TextStyle? textStyle;
  const AppButton({super.key, required this.label, required this.onPressed, this.bgcolor, this.fgcolor, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: bgcolor ?? Colors.indigo,
                        foregroundColor: fgcolor ?? Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Text(label, style: textStyle ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)) 
                    );
  }
}