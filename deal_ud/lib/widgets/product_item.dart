import 'package:flutter/material.dart';
import 'package:deal_ud/Screens/producr_detail_screen.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('');
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        header: Container(
          child: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
            onPressed: () {},
          ),
          alignment: Alignment.topRight,
        ),
        footer: Container(
          color: Colors.white38,
          child: ListTile(
            leading: Text(
              title,
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
