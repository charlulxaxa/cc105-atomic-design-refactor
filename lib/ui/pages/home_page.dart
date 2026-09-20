import 'package:flutter/material.dart';
import '../../models/product_model.dart';
import '../template/templates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Wireless Mouse',
      price: 599.0,
      category: 'Electronics',
      icon: Icons.mouse,
    ),
    Product(
      id: 2,
      name: 'Mechanical Keyboard',
      price: 2499.0,
      category: 'Electronics',
      icon: Icons.keyboard,
    ),
    Product(
      id: 3,
      name: 'Ceramic Mug',
      price: 149.0,
      category: 'Home',
      icon: Icons.coffee,
    ),
    Product(
      id: 4,
      name: 'Notebook',
      price: 79.0,
      category: 'Office',
      icon: Icons.book,
    ),
    Product(
      id: 5,
      name: 'Desk Lamp',
      price: 899.0,
      category: 'Home',
      icon: Icons.lightbulb,
    ),
    Product(
      id: 6,
      name: 'Backpack',
      price: 1299.0,
      category: 'Accessories',
      icon: Icons.backpack,
    ),
    Product(
      id: 7,
      name: 'Water Bottle',
      price: 299.0,
      category: 'Accessories',
      icon: Icons.local_drink,
    ),
  ];
  
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}