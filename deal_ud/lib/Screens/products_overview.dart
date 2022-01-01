import 'package:flutter/material.dart';
import 'package:deal_ud/models/products.dart';
import 'package:deal_ud/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = [
    Product(
        id: 'p1',
        title: 'Redshirt',
        oldprice: 1000.0,
        newprice: 999.0,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg'),
    Product(
        id: 'p50',
        title: 'scarf',
        oldprice: 699.0,
        newprice: 399.0,
        imageUrl:
            'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealMart'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProduct.length,
        itemBuilder: (ctx, i) => ProductItem(
            loadedProduct[i].id,
            loadedProduct[i].title,
            loadedProduct[i].oldprice,
            loadedProduct[i].newprice,
            loadedProduct[i].imageUrl),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
