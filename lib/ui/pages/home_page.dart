import 'package:flutter/material.dart';
import 'package:messy_catalog_activity/ui/molecules/app_snack_notification.dart';
import '../../models/product_model.dart';
import '../template/templates.dart';
import '../organisms/organisms.dart';
import '../molecules/molecules.dart';

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

  void onSearch(String value) {
    setState(() {
      _searchQuery = value;
    });
  }

  void addtoCart(Product product) {
    AppSnackNotification.notification(context, 'Added ${product.name} to cart');
  }

  void onDelete(Product product) {
    setState(() {
      _products.removeWhere((item) => item.id == product.id);
    });
  }
  void addProduct(Product product){
    setState(() {
      _products.add(product);
    });
  }
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredProducts = _products.where((product) {
      return product.name.toLowerCase().contains(_searchQuery.toLowerCase());
    });

    return ProductTemplate(
      appbar: BarApp(title: "Messy Catalog"),
      searchbar: BarSearch(onChanged: onSearch),
      productCard: filteredProducts
          .map(
            (product) => ProductCard(
              product: product,
              onAddToCart: () => (product),
              onDelete: () => onDelete(product),
            ),
          )
          .toList(),
      productForm: AddProductForm(onSubmit: addProduct)
    );
  }
}
