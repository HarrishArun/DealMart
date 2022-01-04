import 'package:deal_ud/widgets/productsgrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/productsgrid.dart';
import '../providers/products_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../Screens/favscreen.dart';
import 'allprod.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  final screen = [allProd(), Favscreen()];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
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
    );
  }
}
