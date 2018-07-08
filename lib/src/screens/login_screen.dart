import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      final bloc = Provider.of(context);

      return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(bloc),
            passwordField(bloc),
            Container(margin: EdgeInsets.only(top: 30.0)),
            submitButton(),
          ],
        ),
      );
    }

    Widget emailField(bloc) {
      return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email Address',
              errorText: snapshot.error,
            ),
          );
        },
      );  
    }

    Widget passwordField(bloc) {
      return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            decoration: InputDecoration(
            hintText: 'Must contain 8 characters',
            labelText: 'Password',
            errorText: snapshot.error
            ),
            obscureText: true,
          );
        }, 
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