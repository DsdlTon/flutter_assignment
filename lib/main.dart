import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/register.dart';
import 'package:flutter_assignment/ui/home.dart';
import 'package:flutter_assignment/ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: LoginPage(),
      ),
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
        '/HomePage': (context) => HomePage(),
      },
    );
  }
}


// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyLoginState();
//   }
// }

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
