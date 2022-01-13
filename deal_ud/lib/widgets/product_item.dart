import 'package:deal_ud/Screens/products_overview.dart';
import 'package:flutter/material.dart';
import 'package:deal_ud/Screens/producr_detail_screen.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final double oldprice;
  final double newprice;
  final String imageUrl;
  ProductItem(
    this.id,
    this.title,
    this.oldprice,
    this.newprice,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetailscreen.routName, arguments: product.id);
          },
          child: Image.asset(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        header: Container(
          child: IconButton(
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.redAccent,
            ),
            onPressed: () {
              product.toggleFavouriteStatus();
            },
          ),
          alignment: Alignment.topRight,
        ),
        footer: Container(
          color: Colors.white38,
          child: ListTile(
            leading: Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            title: Text(
              "\RS:$newprice",
              style: TextStyle(
                  color: Colors.red[900], fontWeight: FontWeight.w800),
            ),
            subtitle: Text(
              "\RS:$oldprice",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.lineThrough),
            ),
          ),
        ),
      ),
    );
  }
}
