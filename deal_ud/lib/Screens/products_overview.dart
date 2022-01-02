import 'package:deal_ud/widgets/productsgrid.dart';
import 'package:flutter/material.dart';
import '../widgets/productsgrid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DealMart'),
        ),
        // ignore: prefer_const_constructors
        body: productgrids(
          loadedProduct: [],
        ));
  }
}
