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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset("resources/Tulips.jpg",),
              padding: EdgeInsets.fromLTRB(70.0, 30.0, 70.0, 0.0),
            ),
            // Image.asset(
            //   "resources/Tulips.jpg",
            //   height: 200,
            // ),
            TextFormField(
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
                  return "user or password ไม่ถูกต้อง";
                }
              },
            ),
            TextFormField(
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
                  return "user or password ไม่ถูกต้อง";
                }
              },
            ),
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {
                // _formKey.currentState.validate();
                if (_formKey.currentState.validate() == true) {
                  Navigator.pushNamed(context, '/HomePage');
                }
              },
            ),
            FlatButton(
              child: Text("Register New Account"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/RegisterPage');
              },
            )
          ],
        ),
      ),
    );
  }
}

// class _MyLoginState extends State<MyApp> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Assignment',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: {
//         '/RegisterPage': (context) => RegisterPage(),
//         '/HomePage': (context) => HomePage(),
//       },
//       home: Scaffold(
//         body: Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               Image.asset(
//                 "resources/Tulips.jpg",
//                 height: 200,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                   hintText: "Please input your email",
//                   icon: Icon(Icons.email),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 onSaved: (value) => print(value),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return "Please input value";
//                   }
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: "Password",
//                   hintText: "Please input your password",
//                   icon: Icon(Icons.lock),
//                 ),
//                 keyboardType: TextInputType.text,
//                 obscureText: true,
//                 onSaved: (value) => print(value),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return "Please input value";
//                   }
//                 },
//               ),
//               RaisedButton(
//                 child: Text("LOGIN"),
//                 onPressed: () {
//                   // _formKey.currentState.validate();
//                   Navigator.pushNamed(context,'/HomePage');
//                 },
//               ),
//               FlatButton(
//                 child: Text("Register New Account"),
//                 textColor: Colors.blue,
//                 onPressed: () {
//                   Navigator.pushNamed(context,'/RegisterPage');
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
