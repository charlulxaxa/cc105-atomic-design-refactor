import 'package:flutter/material.dart';
import '../atoms/atoms.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const SubmitButton({super.key, 
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      onPressed: onPressed,
                      label: label,
                      fontSize: 16,
                      fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 14)
                    ),
                  );
  }
}