import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  XFile? _images;
  Future getImage(BuildContext context) async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _images = image;
      print('Image path $_images');
    });

   uploadPic(context);
  }

  Future uploadPic(BuildContext context) async {
    String filName = basename(_images!.path);
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(filName);
    UploadTask uploadTask = firebaseStorageRef.putFile(File(_images!.path));
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

    setState(() {
      print(' Profile pic uploaded');
      // Scaffold.of(context)
      //     .snowSnackBar(SnackBar(content: Text('profile pic uploaded')));
    });
  }

  // final ImagePicker _picker = ImagePicker();

  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: 
      
      Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 120,
                    height: 120,
                    child: (_images != null)
                        ? CircleAvatar(
                            backgroundImage: FileImage(File(
                            _images!.path,
                          )))
                        : Container(),
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        getImage(context);
                        FocusScope.of(context).unfocus();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.blue),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            buildTextField("Full Name", "Suresh", false),
            buildTextField("Email", "sureshj816@gmail.com", false),
            buildTextField("Password", "anusuresh", true),
            buildTextField("Location", "Bobbili", false),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("CANCEL",
                      style: TextStyle(
                          fontSize: 12, letterSpacing: 1, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                ElevatedButton(
                  onPressed: () {
                    uploadPic(context);
                    Fluttertoast.showToast(msg:"Save Sucessfully");
                  },
                  child: Text("SAVE",
                      style: TextStyle(
                          fontSize: 12, letterSpacing: 1, color: Colors.white)),
                        
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  onPressed: () async {
                    //  XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);

                    setState(() {
                      // image = File(pickedImage!.path);
                      isObscurePassword = !isObscurePassword;
                    });
                  })
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
  
}
