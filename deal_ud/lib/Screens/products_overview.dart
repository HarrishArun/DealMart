import 'package:deal_ud/widgets/productsgrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/productsgrid.dart';
import '../providers/products_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../Screens/favscreen.dart';
import 'allprod.dart';
import '../Screens/userproduct_screen.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  final screen = [allProd(), Favscreen()];
  int index = 1;
  var _showOnlyFavorites = false;
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: const Text('DealMart'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(UserProductsScreen.routName);
                },
                icon: Icon(Icons.details)),
            new IconButton(
                onPressed: () {
                  setState(() {
                    FilterOptions.Favorites;
                    _showOnlyFavorites = true;
                  });
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
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
              icon: Icon(
                Icons.more_vert,
              ),
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
        body: productgrids(_showOnlyFavorites),

        bottomNavigationBar: CurvedNavigationBar(
          //color: Colors.black,

          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white70,

          color: Colors.white,
          items: [
            Icon(
              Icons.home_outlined,
              size: 30,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            Icon(
              Icons.person_outline,
              size: 30,
            ),
          ],
          //onTap: (index) {
          // setState(() {
          //   FilterOptions.Favorites;
          //   _showOnlyFavorites = true;
          // });
          // },
          height: 60,
        ),
        //navbar
      ),
    );
  }
}
