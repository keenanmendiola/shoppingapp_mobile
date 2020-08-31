import 'package:flutter/material.dart';
import 'package:mobile/screens/CartScreen.dart';
import 'package:mobile/screens/ForgotPasswordScreen.dart';
import 'package:mobile/screens/RegistrationScreen.dart';
import '../utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/';

  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _obscurePasswordField = true;
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .90;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: kLoginScreenAppBarTitle,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    _emailField(screenWidth),
                    SizedBox(height: 20.0),
                    _passwordField(screenWidth),
                    SizedBox(height: 20.0),
                    _loginButton(screenWidth),
                    SizedBox(height: 20.0),
                    _forgotPasswordButton(),
                    _registerButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _emailField(screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            suffixIcon: Icon(Icons.email),
            labelText: kEmailFieldLabelText,
            hintText: kEmailFieldHintText),
      ),
    );
  }

  Container _passwordField(screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        obscureText: _obscurePasswordField,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              child: Icon(getPasswordIcon(_obscurePasswordField)),
              onTap: () {
                setState(() {
                  _obscurePasswordField = !_obscurePasswordField;
                });
              },
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            labelText: kPasswordFieldLabelText,
            hintText: kPasswordFieldHintText),
      ),
    );
  }

  IconData getPasswordIcon(passwordField) {
    return passwordField ? Icons.visibility : Icons.visibility_off;
  }

  Container _loginButton(screenWidth) {
    return Container(
        width: screenWidth,
        height: 50.0,
        child: RaisedButton(
          color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, CartScreen.routeName);
          },
          child: Text(
            kLoginButtonText,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ));
  }

  FlatButton _forgotPasswordButton() {
    return FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
              context, ForgotPasswordScreen.routeName);
        },
        child: Text(
          kForgotPasswordButtonText,
          style: Theme.of(context).textTheme.bodyText2,
        ));
  }

  FlatButton _registerButton() {
    return FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, RegistrationScreen.routeName);
        },
        child: Text(
          kRegisterButtonText,
          style: Theme.of(context).textTheme.bodyText2,
        ));
  }
}
