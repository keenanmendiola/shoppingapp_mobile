import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/settings";
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: Container(
        child: Text("Settings"),
      ),
    );
  }
}
