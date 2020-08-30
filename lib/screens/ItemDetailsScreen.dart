import 'package:flutter/material.dart';
import 'package:mobile/models/storeItem.dart';

class ItemDetailsScreen extends StatelessWidget {
  final StoreItem storeItem;

  ItemDetailsScreen({@required this.storeItem});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(storeItem.imageUrl),
            SizedBox(height: 20.0),
            itemNameText(context),
            SizedBox(height: 20.0),
            itemCountText(context),
            SizedBox(height: 20.0),
            itemDescriptionText(context),
          ],
        ),
      ),
    );
  }

  Text itemNameText(context) {
    return Text(
      storeItem.itemName,
      style: Theme.of(context).textTheme.headline1,
    );
  }

  Text itemCountText(context) {
    return Text(
      "Number of items in cart ${storeItem.count}",
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Text itemDescriptionText(context) {
    return Text(
      storeItem.description,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
