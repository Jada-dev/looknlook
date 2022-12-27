import 'package:flutter/material.dart';
import 'package:looknlook/bottom.dart';
import 'package:looknlook/mother.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = true;

  // const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Look & Look'),
      ),
      // backgroundColor: Theme.of(context).highlightColor,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: _togglePaasswordView,
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 30,
              width: 300,
              child: ElevatedButton(
             
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return bottom();
                  }), (Route route) => false);
                },
                child: Center(
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePaasswordView() {
    setState(() {
      if (isHiddenPassword == true) {
        isHiddenPassword = false;
      } else {
        isHiddenPassword = true;
      }
    });
  }
}
