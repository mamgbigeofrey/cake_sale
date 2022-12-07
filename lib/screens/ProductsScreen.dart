import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('OUR PROCUCTS'),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
                'Below are our products. Click on a product to view more details'),
          )
        ],
      ),
    );
  }
}
