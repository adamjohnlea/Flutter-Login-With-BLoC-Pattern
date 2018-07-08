import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ),
      );
    }

    Widget emailField() {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email Address',
        ),
      );
    }

    Widget passwordField() {
      return TextField(
        decoration: InputDecoration(
          hintText: 'Must contain 8 characters',
          labelText: 'Password',
        ),
        obscureText: true,
      );
    }

    Widget submitButton() {
      return RaisedButton(
        child: Text('Login'),
        color: Colors.blue[700],
        textColor: Colors.white,
        onPressed: () {},
      );
    }
}