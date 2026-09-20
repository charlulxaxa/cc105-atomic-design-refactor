import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? bgcolor;
  final Color? fgcolor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  const AppButton({super.key, required this.label, required this.onPressed, this.bgcolor, this.fgcolor, this.fontSize, this.fontWeight, this.textStyle, this.padding, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: bgcolor ?? Colors.indigo,
                        foregroundColor: fgcolor ?? Colors.white,
                        padding: padding ?? EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Text(label, style: textStyle ??  TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color)) 
                    );
  }
}