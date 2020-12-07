

import 'package:flutter/material.dart';
import 'package:publish/values/images.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // tampilkan status bar hp batrai dan notofication
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              child: Center(
                child: Image.asset(Images.logo),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                hintText: "Enter your email address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orange,
                ),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              height: 50,
              shape: StadiumBorder(),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Don't have an account"),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

