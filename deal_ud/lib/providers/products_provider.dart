import 'package:deal_ud/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'products.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Redshirt',
        oldprice: 1000.0,
        newprice: 499.0,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg'),
    Product(
        id: 'p50',
        title: 'scarf',
        oldprice: 699.0,
        newprice: 399.0,
        imageUrl:
            'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg')
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
