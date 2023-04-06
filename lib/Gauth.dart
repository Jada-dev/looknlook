import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Gauth extends StatefulWidget {
  

  @override
  State<Gauth> createState() => _GauthState();
}

class _GauthState extends State<Gauth> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
         backgroundColor: Colors.red,
          textStyle: TextStyle(fontSize: 20,),

        ),
        onPressed: (){
          
     //print("calling");
Gauth1.signInWithGoogle();


        },icon: Icon(Icons.facebook,size: 40,),
         label: Text("Google Login")),
    );
  
  }
}

class Gauth1{

  // Google Sign In
  static signInWithGoogle()async{
    // begin interactive sign in process\
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;


    // create a new credantail for user 
   final credantial = GoogleAuthProvider.credential(
    accessToken: gAuth.idToken,
   );
    // finally , lets sign in 
  }
}