import 'package:deal_ud/widgets/productsgrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/productsgrid.dart';
import '../providers/products_provider.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text('DealMart'),
          actions: [
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    _showOnlyFavorites = true;
                    // productsContainer.showFavouritesOnly();
                  } else {
                    _showOnlyFavorites = false;
                    //productsContainer.showAll();
                  }
                });
              }, //adding Favvv................
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text('only fav'), value: FilterOptions.Favorites),
                PopupMenuItem(
                  child: Text('ShowAll'),
                  value: FilterOptions.All,
                )
              ],
            )
          ],
        ),
        body: productgrids(_showOnlyFavorites));
  }
}
