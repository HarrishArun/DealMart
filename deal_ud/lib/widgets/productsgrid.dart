import 'package:deal_ud/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:deal_ud/models/products.dart';
import 'package:deal_ud/widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class productgrids extends StatelessWidget {
  const productgrids({
    Key? key,
    required this.loadedProduct,
  }) : super(key: key);

  final List<Product> loadedProduct;

  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context);
    final products = ProductData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(products[i].id, products[i].title,
          products[i].oldprice, products[i].newprice, products[i].imageUrl),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
