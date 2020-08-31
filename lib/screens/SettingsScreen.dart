import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/settings";
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kSettingsScreenAppBarTitle,
        centerTitle: true,
      ),
      body: Container(
        child: Text("Settings"),
      ),
    );
  }
}
