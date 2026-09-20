import 'package:flutter/material.dart';
import 'package:messy_catalog_activity/ui/molecules/app_snack_notification.dart';
import '../molecules/molecules.dart';
import '../../models/product_model.dart';
import '../atoms/atoms.dart';


class AddProductForm extends StatefulWidget {
  final Function(Product) onSubmit;
  const AddProductForm({
    super.key,
    required this.onSubmit,}
  );

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String _selectedCategory = 'Electronics';

  final int _nextId = 8;
  
  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _resetForm(){
    _nameController.clear();
    _priceController.clear();
    _descriptionController.clear();
    setState(() {
      _selectedCategory = 'Electronics';
    });
  }
  //validators 
  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Product name is required';
    }
    return null;
  }//pwede ba ilaag ini sa ibang class?
  String? validatePrice(String? value){
    if (value == null || value.trim().isEmpty) {
                        return 'Price is required';
                      }
                      final parsed = double.tryParse(value);
                      if (parsed == null) {
                        return 'Price must be a number';
                      }
                      if (parsed <= 0) {
                        return 'Price must be greater than zero';
                      }
                      return null;
  }//pwede ba ilaag ini sa ibang class?

  Product? _validate(){
    if (_formKey.currentState!.validate()) {
      final newProduct = Product(
        id: _nextId,
        name: _nameController.text,
        price: double.parse(_priceController.text),
        category: _selectedCategory,
        icon: Icons.inventory_2,
      );   

      return newProduct; 
    }

    return null;
  } 

  @override
  Widget build(BuildContext context) {
    return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFormField(
                    controller: _nameController,
                    label: 'Product Name',
                    validator: validateName,
                  ),
                  const SizedBox(height: 12),
                  AppFormField(
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    label: 'Price',
                    validator: validatePrice,
                  ),
                  const SizedBox(height: 12),
                  AppDropdown(
                    initial: _selectedCategory,
                    label: 'Category',
                    category: ['Electronics', 'Home', 'Office', 'Accessories'],
                    onChanged: (value) {
                      setState(() {
                        _selectedCategory = value ?? 'Electronics';
                      });
                    },
                  ),
                  const SizedBox(height: 12),
                  AppFormField(
                    controller: _descriptionController,
                    maxLines: 3,
                    label: 'Description',
                    alignLabelWithHint: true,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,  
                    child: AppButton(
                        label:'Submit Product',
                        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                        bgcolor: Colors.indigo,
                        fgcolor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        onPressed: (){
                          final newProduct = _validate();
                          if (newProduct != null){
                            widget.onSubmit(newProduct);
                            _resetForm();
                          }else{
                            AppSnackNotification.notification(context, 'Please check the form and try again.');
                          }
                        }

                        ),
                  ),       
                ]
            ),
          );
  
  }
}