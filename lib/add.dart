import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:looknlook/addscreen.dart';
import 'package:looknlook/main.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  File? media;
  final ImagePicker _picker = ImagePicker();
  bool _isVideo = false;
  VideoPlayerController? _controller;

  void pickVideoFromCamera(BuildContext context) async {
    final XFile? photo = await _picker.pickVideo(source: ImageSource.camera);

    if (photo == null) return;

    setState(() {
      media = File(photo.path);
      _isVideo = true;
    });

    _controller = VideoPlayerController.file(media!);

    _controller!.initialize();
    _controller!.setLooping(true);
    _controller!.play();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => addscreen(
                  controller: _controller,
                ))));
  }

  void pickVideoFromGallery(BuildContext context) async {
    final XFile? photo = await _picker.pickVideo(source: ImageSource.gallery);

    if (photo == null) return;

    setState(() {
      media = File(photo.path);
      _isVideo = true;
    });

    //  Reference firebaseStorageRef =FirebaseStorage.instance.ref().child(photo.path);
    // UploadTask uploadTask = firebaseStorageRef.putFile(media!);
    // TaskSnapshot taskSnapshot= await uploadTask.whenComplete(() => null);

    _controller = VideoPlayerController.file(media!);

    _controller!.initialize();
    _controller!.setLooping(true);
    _controller!.play();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => addscreen(
                  controller: _controller,
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: _isVideo ? VideoPlayer(_controller!) : Container()),
            SizedBox(
              height: 400,
            ),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Padding(padding: EdgeInsets.only(right: 150, bottom: 100)),
                GestureDetector(
                  onTap: () {
                    pickVideoFromCamera(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      pickVideoFromGallery(context);
                    },
                    icon: Icon(
                      Icons.image_rounded,
                      color: Colors.white,
                    ),
                    iconSize: 35,
                  ),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
