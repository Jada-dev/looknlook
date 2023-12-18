import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:looknlook/Gauth.dart';
import 'package:looknlook/bottom.dart';

import 'package:looknlook/home.dart';
import 'package:looknlook/tabbar.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  var _formkey = GlobalKey<FormState>();
  bool isLoading = false;

  void sinup(BuildContext context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _email.text, password: _password.text)
        .then((user) {
      print(' hi sir');
      setState(() {
        isLoading = false;
      });

      Fluttertoast.showToast(msg: "Login sucessfully");
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => bottom(),
          ));
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Icon(
            Icons.lock,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to Look & Look",
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            validator: (item) {
              return item!.contains("@") ? null : "Enter Valid Email";
            },
            decoration: InputDecoration(
              hintText: "Enter Email",
              //  labelText: "Email",
              // fillColor: Colors.white,
              //
              //  filled: true,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _password,
            keyboardType: TextInputType.text,
            validator: (item) {
              return item!.length > 6 ? null : "Password must be 6 characters";
            },
            decoration: InputDecoration(
              hintText: "Enter Password",
              //   labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                sinup(context);

                //     print('entered in on press');
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          ),
          Text('Or continue with'),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Gauth(),
          )
        ],
      )),
    );

    // GOOGLE ELEVATED BUTTON
  }
}
