import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class ProductTemplate extends StatelessWidget {
  final PreferredSizeWidget appbar;
  final Widget searchbar;
  final List<Widget> productCard;
  final Widget productForm;
  const ProductTemplate({super.key,required this.appbar, required this.searchbar,required this.productCard, required this.productForm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchbar,
              const SizedBox(height: 16,),
              AppText("Catalog",style: AppTextStyle.title),
              const SizedBox(height: 8,),
              Column(
                children: productCard.isEmpty ? [SizedBox(height: 6,child: AppText("No Product"),) ,] : productCard,
              ),
              const Divider(height: 32, thickness: 1),
              AppText( "Add new Product", style: AppTextStyle.title),
              productForm,
            ]  
          ),
       )
    );
  }
}