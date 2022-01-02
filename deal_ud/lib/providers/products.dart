import 'package:flutter/cupertino.dart';
import './products_provider.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final double oldprice;
  final double newprice;
  final String imageUrl;
  bool isFavorite;
  Product(
      {required this.id,
      required this.title,
      required this.oldprice,
      required this.newprice,
      required this.imageUrl,
      this.isFavorite = false});
  void toggleFavouriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
