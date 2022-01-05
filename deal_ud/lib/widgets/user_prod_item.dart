import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  UserProductItem(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      //subtitle:Text('price'),
      trailing: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
            color: Colors.purple.shade400,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
            color: Theme.of(context).errorColor,
          )
        ],
      ),
    );
  }
}
