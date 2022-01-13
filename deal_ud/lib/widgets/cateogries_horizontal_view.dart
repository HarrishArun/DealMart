import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Cateogry(
            image_location: "assets/images/dress.png",
            image_caption: "Fashion",
          ),
          Cateogry(
            image_location: "assets/images/Mobile.png",
            image_caption: "Mobiles",
          ),
          Cateogry(
            image_location: "assets/images/applaince.png",
            image_caption: "Applaince",
          ),
          Cateogry(
            image_location: "assets/images/earphones.png",
            image_caption: "Earphone",
          ),
          Cateogry(
            image_location: "assets/images/smartwatch.png",
            image_caption: "Watches",
          ),
        ],
      ),
    );
  }
}

class Cateogry extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Cateogry({required this.image_caption, required this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 110.0,
            child: ListTile(
                title: Image.asset(
                  image_location,
                  width: 100.0,
                  height: 80.0,
                ),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(image_caption),
                )),
          )),
    );
  }
}
