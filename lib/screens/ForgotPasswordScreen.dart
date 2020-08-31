import 'package:flutter/material.dart';
import 'package:mobile/screens/RegistrationScreen.dart';
import 'package:mobile/screens/LoginScreen.dart';
import '../utilities/constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String routeName = '/forgotpassword';

  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .90;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: kForgotPasswordScreenAppBarTitle,
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
                    _sendEmailButton(screenWidth),
                    SizedBox(height: 20.0),
                    _loginButton(),
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

  Container _emailField(double screenWidth) {
    return Container(
      width: screenWidth,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            suffixIcon: Icon(Icons.email),
            labelText: kEmailFieldLabelText,
            hintText: kEmailFieldHintText),
      ),
    );
  }

  Container _sendEmailButton(screenWidth) {
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
            kForgotPasswordScreenButtonText,
            style: Theme.of(context).textTheme.bodyText2,
          ),
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
