import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final int id;
  final String category;
  final IconData icon;
  final String? description;
  
  Product({
    required this.name,
    required this.price,
    required this.id,
    required this.category,
    required this.icon,
    this.description,
  });
  
}  