import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  @override

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text("User นี้มีอยู่ในระบบแล้ว"),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                } else if (value == "admin") {
                  _showDialog();
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
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Confirm YourPassword",
                hintText: "Please confirm your password",
                icon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "กรุณาระบุข้อมูลให้ครบถ้วน";
                }
              },
            ),
            RaisedButton(
              child: Text("CONTINUE"),
              onPressed: () {
                if (_formKey.currentState.validate() == true) {
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class MyRegisterForm extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyRegisterFormState();
//   }
// }

// class MyRegisterFormState extends State<MyRegisterForm> {
//   final _formKey = GlobalKey<FormState>();

// class RegisterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("REGISTER"),
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: <Widget>[
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 hintText: "Please input your email",
//                 icon: Icon(Icons.email),
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onSaved: (value) => print(value),
//               validator: (value){
//                 if(value.isEmpty) {
//                   return "Please input value";
//                 }
//               },
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 hintText: "Please input your password",
//                 icon: Icon(Icons.lock),
//               ),
//               keyboardType: TextInputType.text,
//               obscureText: true,
//               onSaved: (value) {
//                 if(value.isEmpty) {
//                   return "กรุณาระบุข้อมูลให้ครบถ้วน";
//                 } else if(value == "admin") {
//                   return "user นี้มีอยู่ในระบบแล้ว";
//                 }
//               },
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: "Confirm Password",
//                 hintText: "กรุณาระบุข้อมูลให้ครบถ้วน",
//                 icon: Icon(Icons.lock),
//               ),
//               keyboardType: TextInputType.text,
//               obscureText: true,
//               onSaved: (value) {
//                 if(value.isEmpty) {
//                   return "กรุณาระบุข้อมูลให้ครบถ้วน";
//                 }
//               },
//             ),
//             RaisedButton(
//               child: Text("CONTINUE"),
//               onPressed: (){
//                 _formKey.currentState.validate();
//                 Navigator.pop(context);
//               }
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
