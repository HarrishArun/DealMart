import 'package:flutter/material.dart';
import 'package:deal_ud/widgets/productsgrid.dart';

import 'package:provider/provider.dart';
import '../widgets/productsgrid.dart';
import '../providers/products_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

enum FilterOptions { Favorites, All }

class allProd extends StatefulWidget {
  const allProd({Key? key}) : super(key: key);

  @override
  _allProdState createState() => _allProdState();
}

class _allProdState extends State<allProd> {
  var _showOnlyFavorites = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.grey[700],
          appBar: AppBar(
            title: const Text('DealMart'),
          ),
          body: productgrids(_showOnlyFavorites),
        ));
  }
}
