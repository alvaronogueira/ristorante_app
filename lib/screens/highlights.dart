import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';
import 'package:panucci_ristorante/menu.dart';

class Highligthts extends StatelessWidget {
  const Highligthts({Key? key}) : super(key: key);
  final List items = highlitghts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Highlights'),
          ListView.builder(
            //return of each item inside list
            itemBuilder: (context, index) {
              return HighlightItem(
                  imageURI: items[index]["image"],
                  itemTitle: items[index]["name"],
                  itemPrice: items[index]["price"],
                  itemDescription: items[index]["description"]);
            },
            itemCount: items.length,
          ),
        ],
      ),
    );
  }
}
