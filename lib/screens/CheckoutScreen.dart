import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  static String routeName = "/checkout";
  CheckoutScreenState createState() => CheckoutScreenState();
}

class CheckoutScreenState extends State<CheckoutScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
      ),
      body: Container(
        child: Text("Checkout"),
      ),
    );
  }
}
