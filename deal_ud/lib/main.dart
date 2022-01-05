import 'package:deal_ud/Screens/producr_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:deal_ud/Screens/products_overview.dart';
import './providers/products_provider.dart';
import 'package:provider/provider.dart';
import 'Screens/userproduct_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DealMart',
        theme:
            ThemeData(primarySwatch: Colors.grey, accentColor: Colors.yellow),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailscreen.routName: (ctx) => ProductDetailscreen(),
          UserProductsScreen.routName: (cxt) => UserProductsScreen()
        },
      ),
    );
  }
}
