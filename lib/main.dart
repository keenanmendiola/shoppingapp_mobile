import 'package:flutter/material.dart';
import 'package:mobile/screens/LoginScreen.dart';
import './routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: LoginScreen.routeName,
    routes: routes,
    theme: ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        elevation: 0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.grey, fontSize: 20.0),
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, color: Colors.white),
        headline6: TextStyle(fontSize: 36.0, color: Colors.white),
        bodyText2: TextStyle(fontSize: 15.0, color: Colors.white),
      ),
    ),
  ));
}
