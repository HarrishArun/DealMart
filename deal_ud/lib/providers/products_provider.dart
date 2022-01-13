import 'package:deal_ud/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'products.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Mouse',
        oldprice: 999,
        newprice: 470,
        imageUrl: 'assets/images/mouse.jpg'),
    Product(
        id: 'p50',
        title: 'Earbuds',
        oldprice: 999,
        newprice: 499,
        imageUrl: 'assets/images/earbuds.jpg'),
    Product(
        id: 'p20',
        title: 'Headphone',
        oldprice: 899,
        newprice: 699,
        imageUrl: 'assets/images/wirelesscharger.jpg'),
    Product(
        id: 'p10',
        title: 'Speaker',
        oldprice: 999,
        newprice: 599,
        imageUrl: 'assets/images/speaker.jpg'),
  ];
  var _showFavoritesOnly = false;
  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    //  }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

////  void showFavouritesOnly() {
  //  _showFavoritesOnly = true;
  ////   notifyListeners();
//  }

  // void showAll() {
  //  _showFavoritesOnly = false;
  //   notifyListeners();
//  }
}
