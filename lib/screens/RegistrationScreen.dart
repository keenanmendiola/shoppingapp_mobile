import 'package:flutter/material.dart';
import 'package:mobile/screens/ForgotPasswordScreen.dart';
import 'package:mobile/screens/LoginScreen.dart';
import '../utilities/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = '/registration';

  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscurePasswordField = true;
  bool _obscureConfirmPasswordField = true;
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .90;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: kRegistrationScreenAppBarTitle,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    _firstNameField(screenWidth),
                    SizedBox(height: 20.0),
                    _lastNameField(screenWidth),
                    SizedBox(height: 20.0),
                    _emailField(screenWidth),
                    SizedBox(height: 20.0),
                    _passwordField(screenWidth),
                    SizedBox(height: 20.0),
                    _confirmPasswordField(screenWidth),
                    SizedBox(height: 20.0),
                    _registerButton(screenWidth),
                    SizedBox(height: 20.0),
                    _forgotPasswordButton(),
                    _loginButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _firstNameField(double screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            suffixIcon: Icon(Icons.person),
            labelText: kFirstNameFieldLabelText,
            hintText: kFirstNameFieldHintText),
      ),
    );
  }

  Container _lastNameField(double screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            suffixIcon: Icon(Icons.person),
            labelText: kLastNameFieldLabelText,
            hintText: kLastNameFieldHintText),
      ),
    );
  }

  Container _emailField(double screenWidth) {
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

  Container _passwordField(double screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        obscureText: _obscurePasswordField,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              child: Icon(_obscurePasswordField
                  ? Icons.visibility
                  : Icons.visibility_off),
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

  Container _confirmPasswordField(double screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        obscureText: _obscureConfirmPasswordField,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              child: Icon(_obscureConfirmPasswordField
                  ? Icons.visibility
                  : Icons.visibility_off),
              onTap: () {
                setState(() {
                  _obscureConfirmPasswordField = !_obscureConfirmPasswordField;
                });
              },
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            labelText: kConfirmPasswordFieldLabelText,
            hintText: kPasswordFieldHintText),
      ),
    );
  }

  Container _registerButton(screenWidth) {
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
          onPressed: () {},
          child: Text(
            kRegisterButtonText,
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

  FlatButton _loginButton() {
    return FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, LoginScreen.routeName);
        },
        child: Text(
          kLoginButtonText,
          style: Theme.of(context).textTheme.bodyText2,
        ));
  }
}
