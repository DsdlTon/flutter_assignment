import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text("User or Password ไม่ถูกต้อง"),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(
                "resources/Tulips.jpg",
              ),
              padding: EdgeInsets.fromLTRB(70.0, 30.0, 70.0, 0.0),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "User ID",
                  hintText: "Please input your User Id",
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input value";
                  } else if (value == "admin") {
                    _showDialog();
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Please input your password",
                  icon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input value";
                  } else if (value == "admin") {
                    _showDialog();
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  if (_formKey.currentState.validate() == true) {
                    Navigator.pushNamed(context, '/HomePage');
                  }
                },
              ),
              // ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: ButtonTheme(
                padding: EdgeInsets.only(right: 30),
                child: FlatButton(
                  child: Text("Register New Account"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/RegisterPage');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
