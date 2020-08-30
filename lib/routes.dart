import 'package:flutter/material.dart';
import 'package:mobile/screens/CartScreen.dart';
import 'package:mobile/screens/ForgotPasswordScreen.dart';
import 'package:mobile/screens/SettingsScreen.dart';

import './screens/LoginScreen.dart';
import './screens/RegistrationScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  RegistrationScreen.routeName: (BuildContext context) => RegistrationScreen(),
  ForgotPasswordScreen.routeName: (BuildContext context) =>
      ForgotPasswordScreen(),
  CartScreen.routeName: (BuildContext context) => CartScreen(),
  SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
};
