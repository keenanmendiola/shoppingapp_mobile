import 'package:flutter/material.dart';
import 'package:mobile/components/ItemCard.dart';
import 'package:mobile/models/storeItem.dart';

class ItemList extends StatelessWidget {
  //todo: list of store items in cart
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .10;

    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ItemCard(
              cardWidth: screenWidth,
              storeItem: StoreItem(
                  itemName: "Sample Item",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  imageUrl: "https://picsum.photos/250?image=9",
                  count: 2,
                  pricePerUnit: 20.0),
            );
          }),
    );
  }
}
