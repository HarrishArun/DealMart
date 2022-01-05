import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import 'package:deal_ud/widgets/user_prod_item.dart';

class UserProductsScreen extends StatelessWidget {
  static const routName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ProductList'),
          actions: [const IconButton(onPressed: null, icon: Icon(Icons.add))],
        ),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: productData.items.length,
                itemBuilder: (_, i) => UserProductItem(
                    productData.items[i].title,
                    productData.items[i].imageUrl))));
  }
}
