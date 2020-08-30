import 'package:flutter/material.dart';
import 'package:mobile/components/ItemList.dart';
import 'package:mobile/screens/CheckoutScreen.dart';
import 'package:mobile/screens/SettingsScreen.dart';
import 'package:badges/badges.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";

  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  void initState() {
    super.initState();
    //perform api call here to get store items list.
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Store Name"),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: _navigateToSettings,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: _itemCountBadge(),
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: "Scanner",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ItemList(),
            Text("Scanner"),
          ],
        ),
        floatingActionButton: _checkoutButton(),
      ),
    );
  }

  FloatingActionButton _checkoutButton() {
    return FloatingActionButton.extended(
      label: Text("Checkout"),
      onPressed: _navigateToCheckout,
      icon: Icon(
        Icons.credit_card,
      ),
    );
  }

  void _navigateToCheckout() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CheckoutScreen(),
        ));
  }

  void _navigateToSettings() {
    Navigator.pushNamed(context, SettingsScreen.routeName);
  }

  Padding _itemCountBadge() {
    return Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Badge(
        badgeContent: Text("10"),
        child: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SettingsScreen.routeName);
            }),
      ),
    );
  }
}
