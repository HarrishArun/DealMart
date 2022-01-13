import 'package:deal_ud/widgets/productsgrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/productsgrid.dart';
import '../providers/products_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../Screens/favscreen.dart';
import 'allprod.dart';
import '../Screens/userproduct_screen.dart';
import '../widgets/cateogries_horizontal_view.dart';

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
            IconButton(
                onPressed: () {
                  setState(() {
                    FilterOptions.Favorites;
                    _showOnlyFavorites = false;
                  });
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                )),
          ],
        ),
        body: Column(children: [
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Top Cateogries'),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recent Deals',
            ),
          ),
          Flexible(child: productgrids(_showOnlyFavorites))
        ]),

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

          height: 60,
        ),
        //navbar
      ),
    );
  }
}
