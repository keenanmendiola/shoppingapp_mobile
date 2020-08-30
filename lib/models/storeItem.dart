import 'package:flutter/cupertino.dart';

class StoreItem {
  String itemName;
  String description;
  String imageUrl;
  double pricePerUnit;
  int count;

  StoreItem(
      {@required this.itemName,
      @required this.description,
      @required this.imageUrl,
      @required this.count,
      @required this.pricePerUnit});
}
