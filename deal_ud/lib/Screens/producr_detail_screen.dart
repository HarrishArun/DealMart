import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class ProductDetailscreen extends StatelessWidget {
  static const routName = '/product_detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
        appBar: AppBar(
          title: const Text('DealMart'), //same way used to retrive data
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text("ADD TO WISHLIST"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("BUY NOW"),
                ),
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(loadedProduct.imageUrl),
              ),
              header: Container(
                color: Colors.white38,
                child: ListTile(
                  leading: Text(
                    loadedProduct.title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  title: Row(children: [
                    Expanded(
                        child: Text("M.R.P.:\₹${loadedProduct.oldprice}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.5))),
                  ]),
                ),
              ),
            ),
          ),
          Container(
            height: 30.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  title: Row(children: [
                    Expanded(
                        child: Text(
                      "Deal of the Day:\₹${loadedProduct.newprice}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900],
                          fontSize: 20),
                    )),
                  ]),
                ),
              ),
            ),
          ),
        ]));
  }
}
