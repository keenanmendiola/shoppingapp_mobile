import 'package:flutter/material.dart';
import 'package:mobile/components/Counter.dart';
import 'package:mobile/models/storeItem.dart';
import 'package:mobile/screens/ItemDetailsScreen.dart';
import '../utilities/constants.dart';

class ItemCard extends StatefulWidget {
  final StoreItem storeItem;
  final double cardWidth;
  ItemCard({@required this.cardWidth, @required this.storeItem});

  ItemCardState createState() => ItemCardState();
}

class ItemCardState extends State<ItemCard> {
  int count = 0;
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: widget.cardWidth,
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    navigateToItemDetails(),
                  );
                },
                child: Image.network(
                  widget.storeItem.imageUrl,
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.storeItem.itemName),
                  Text("$kItemCardItemCountText ${widget.storeItem.count}"),
                  Text(
                      "$kItemCardPricePerUnitText ${widget.storeItem.pricePerUnit}"),
                ],
              ),
              Counter(
                count: count,
                increment: increment,
                decrement: decrement,
              ),
            ],
          ),
        ),
      ),
    );
  }

  MaterialPageRoute navigateToItemDetails() {
    return MaterialPageRoute(
      builder: (context) => ItemDetailsScreen(storeItem: widget.storeItem),
    );
  }

  increment() {
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      count--;
    });
  }
}
