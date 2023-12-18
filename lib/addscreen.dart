import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:looknlook/add.dart';
import 'package:looknlook/main.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';

class addscreen extends StatefulWidget {
  VideoPlayerController? controller;
  addscreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<addscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<addscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => add()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    child: VideoPlayer(widget.controller!),
                  ),
                  Positioned(
                    top: 230,
                    left: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (widget.controller!.value.isPlaying) {
                              widget.controller!.pause();
                            } else {
                              widget.controller!.play();
                            }
                          });
                        },
                        child: Icon(widget.controller == null
                            ? Icons.abc
                            : widget.controller!.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.yellow[900],
                child: Text(
                  'Post',
                  style: TextStyle(color: Colors.white, letterSpacing: 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
