import 'package:deal_ud/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:deal_ud/providers/products.dart';
import 'package:deal_ud/widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class productgrids extends StatelessWidget {
  final bool showFavs;
  productgrids(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context);
    final products = showFavs ? ProductData.favoriteItems : ProductData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        // create: (c) => products[i],
        child: ProductItem(products[i].id, products[i].title,
            products[i].oldprice, products[i].newprice, products[i].imageUrl),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
