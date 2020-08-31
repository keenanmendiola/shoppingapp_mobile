import 'package:flutter/material.dart';
import 'package:mobile/models/storeItem.dart';
import '../utilities/constants.dart';

class ItemDetailsScreen extends StatelessWidget {
  final StoreItem storeItem;

  ItemDetailsScreen({@required this.storeItem});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kItemDetailsScreenAppBarTitle,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            _itemImage(),
            SizedBox(height: 20.0),
            _itemNameText(context),
            SizedBox(height: 20.0),
            _itemCountText(context),
            SizedBox(height: 20.0),
            _itemDescriptionText(context),
          ],
        ),
      ),
    );
  }

  Container _itemImage() {
    return Container(
      child: Image.network(storeItem.imageUrl),
    );
  }

  Text _itemNameText(context) {
    return Text(
      storeItem.itemName,
      style: Theme.of(context).textTheme.headline1,
    );
  }

  Text _itemCountText(context) {
    return Text(
      "$kItemDetailsScreenItemCountText ${storeItem.count}",
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Text _itemDescriptionText(context) {
    return Text(
      storeItem.description,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
