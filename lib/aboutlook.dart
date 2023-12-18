import 'package:flutter/material.dart';

class aboutlook extends StatefulWidget {
  const aboutlook({Key? key}) : super(key: key);

  @override
  State<aboutlook> createState() => _aboutlookState();
}

class _aboutlookState extends State<aboutlook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rules Of Look&Look',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 5),
        child: SingleChildScrollView(
          child: Text.rich(
            TextSpan(
                text: 'Look&Look',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                children: [
                  TextSpan(
                    text:
                        " exists for people to create and share their own video content,and to discover the world with the Look&Look. Look&Look user , you have the freedom to share your creativity and experence with othwer Look&Look user ,meaning, we are trusting you to be responsible with your content.some of the rules are the necessary to keep Look&Look users safe and comfortable.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                      text: "\n\nPRIVACY",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontFamily: 'Schyler'),
                      children: [
                        TextSpan(
                          text:
                              " We respect the privacy of others. Don't publish or post another person's personal or confidental information.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: " \n\nSexual Content",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontFamily: 'Schyler'),
                            children: [
                              TextSpan(
                                text:
                                    "we have zero tolerance for pornography, sexual violance,prostitution, escort services,sexual massages, we will remove such Content and report it to law enforcement immediately.",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: "\n\nHarassment",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontFamily: 'Schyler'),
                                  children: [
                                    TextSpan(
                                      text:
                                          " We does not tolerate any types of harassment.e.g blackmailing,hateful content, sex, sexual orientation, ethnicity, nationality, and religion.",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                        text: "\n\nFraud and Deception ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            fontFamily: ' Schyler'),
                                        children: [
                                          TextSpan(
                                              text:
                                                  " Any Video that mislpeads or deceives other for financial or personal gain will be taken down. ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text:
                                                  "\n\n Violent or Graphic Content",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.blue,
                                                  fontFamily: 'Schyler'),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "Don't post violent or graphic content, such as child or animal abuse or bodily harm.",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black),
                                                ),
                                                TextSpan(
                                                    text:
                                                        "\n\nIllegal Copntent or Information",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue,
                                                        fontFamily: 'Schyler'),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              " don't permit content that is Illegal or furtherance og Illegal activities.",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.black))
                                                    ])
                                              ]),
                                        ])
                                  ]),
                            ]),
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
}
