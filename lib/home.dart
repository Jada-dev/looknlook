import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:looknlook/bottom.dart';
import 'package:looknlook/contentscreen.dart';
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
      appBar: AppBar(
        title: Text('Look & Look'),
      ),
      // backgroundColor: Theme.of(context).highlightColor,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              padding: EdgeInsets.all(10.0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
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
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 30),
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
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 30,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            print('entered in on press');
                            sinup();
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
    );
  }

  void sinup() {
    if (_formkey.currentState!.validate()) {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((user) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => bottom()),
            (Route<dynamic> route) => false);
      }).catchError((onError) {
        print(onError);
      });
    }
  }
}
