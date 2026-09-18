import 'package:flutter/material.dart';

/// Atom: a plain, unlabeled text input (used for search).
class AppTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  const AppTextField({super.key, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}