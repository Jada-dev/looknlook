import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:looknlook/bottom.dart';
import 'package:looknlook/contentscreen.dart';
import 'package:looknlook/login.dart';
import 'package:looknlook/mother.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  var _formkey = GlobalKey<FormState>();
  bool isLoading = false;

  // const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),

                        //  Email  TextField
                        TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          validator: (item) {
                            return item!.contains("@")
                                ? null
                                : "Enter Valid Email";
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

                        SizedBox(height: 20), // Password TextField

                        TextFormField(
                          controller: _password,
                          keyboardType: TextInputType.text,
                          validator: (item) {
                            return item!.length > 6
                                ? null
                                : "Password must be 6 characters";
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

                        // ElevatedButton
                        Container(
                          height: 40,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              print('entered in on press');
                              sinup();
                            },
                            child: Text(
                              'Registration',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => login(),
                                    ));
                              },
                              child: Text('Sign here')),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    )),
              ),
            ),
    );
  }
  // Firebase

  void sinup() {
    if (_formkey.currentState!.validate()) {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((user) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: 'Registration sucessfully');
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => login()),
            (Route<dynamic> route) => false);
      }).catchError((onError) {
        Fluttertoast.showToast(msg: "$onError");
      });
    }
  }
}
