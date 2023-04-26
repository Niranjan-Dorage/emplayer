import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';

import '../profile/edit_name.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class new_user extends StatefulWidget {
  const new_user({super.key});

  @override
  State<new_user> createState() => _new_userState();
}

class _new_userState extends State<new_user> {
  File? file;
  ImagePicker image = ImagePicker();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String email = "", pass = "";
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 24, 24, 24),
            Color.fromARGB(255, 82, 82, 82),
            Color.fromARGB(255, 24, 24, 24),
            Color.fromARGB(255, 0, 0, 0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Row(
            children: [
              Container(
                child: IconButton(
                    icon: Icon(Icons.navigate_before_rounded),
                    color: Colors.white,
                    iconSize: 46,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontFamily: 'right',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.4),
                ),
              ),
            ],
          ),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   margin: EdgeInsets.only(left: 15, right: 15, top: 50),
          //   height: 45,
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 255, 255, 255),
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextField(
          //     cursorColor: Colors.black,
          //     keyboardType: TextInputType.emailAddress,
          //     style: TextStyle(
          //       fontFamily: "roboto",
          //       color: Color.fromARGB(255, 0, 0, 0),
          //       fontSize: 17,
          //     ),
          //     decoration: InputDecoration(
          //       hintStyle: TextStyle(
          //         color: Color.fromARGB(255, 0, 0, 0),
          //         fontSize: 17,
          //         fontFamily: 'roboto',
          //       ),
          //       hintText: 'Enter Username',
          //       border: InputBorder.none,
          //       contentPadding: EdgeInsets.all(10),
          //     ),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 15, right: 15, top: 80),
            height: 45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              onChanged: (value) => email = value,
              cursorColor: Colors.black,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontFamily: "roboto",
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 17,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontFamily: 'roboto',
                ),
                hintText: 'Enter Gmail',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   margin: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 12),
          //   height: 45,
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 255, 255, 255),
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextField(
          //     cursorColor: Colors.black,
          //     keyboardType: TextInputType.phone,
          //     style: TextStyle(
          //       fontFamily: "roboto",
          //       color: Color.fromARGB(255, 0, 0, 0),
          //       fontSize: 17,
          //     ),
          //     decoration: InputDecoration(
          //       hintStyle: TextStyle(
          //         color: Color.fromARGB(255, 0, 0, 0),
          //         fontSize: 17,
          //         fontFamily: 'roboto',
          //       ),
          //       hintText: 'Enter Phone No.',
          //       border: InputBorder.none,
          //       contentPadding: EdgeInsets.all(10),
          //     ),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 12),
            height: 45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              onChanged: (value) => pass = value,
              obscureText: true,
              cursorColor: Colors.black,
              keyboardType: TextInputType.name,
              style: TextStyle(
                fontFamily: "roboto",
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 17,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontFamily: 'roboto',
                ),
                hintText: 'Enter Password',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   margin: EdgeInsets.only(left: 15, right: 15, top: 20),
          //   height: 45,
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 255, 255, 255),
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextField(
          //     cursorColor: Colors.black,
          //     keyboardType: TextInputType.phone,
          //     style: TextStyle(
          //       fontFamily: "roboto",
          //       color: Color.fromARGB(255, 0, 0, 0),
          //       fontSize: 17,
          //     ),
          //     decoration: InputDecoration(
          //       hintStyle: TextStyle(
          //         color: Color.fromARGB(255, 0, 0, 0),
          //         fontSize: 17,
          //         fontFamily: 'roboto',
          //       ),
          //       hintText: 'Enter Age',
          //       border: InputBorder.none,
          //       contentPadding: EdgeInsets.all(10),
          //     ),
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   margin: EdgeInsets.only(left: 15, right: 15, top: 30),
          //   height: 45,
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 255, 255, 255),
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: TextField(
          //     cursorColor: Colors.black,
          //     keyboardType: TextInputType.text,
          //     style: TextStyle(
          //       fontFamily: "roboto",
          //       color: Color.fromARGB(255, 0, 0, 0),
          //       fontSize: 17,
          //     ),
          //     decoration: InputDecoration(
          //       hintStyle: TextStyle(
          //         color: Color.fromARGB(255, 0, 0, 0),
          //         fontSize: 17,
          //         fontFamily: 'roboto',
          //       ),
          //       hintText: 'Enter Gender',
          //       border: InputBorder.none,
          //       contentPadding: EdgeInsets.all(10),
          //     ),
          //   ),
          // ),
          Center(
            child: Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(top: 15),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(120)),
                child: IconButton(
                  onPressed: () {
                    getgall();
                  },
                  icon: Image.asset(
                    'assets/images/icons/add-photo.png',
                    color: const Color.fromARGB(255, 67, 66, 66),
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 45,
              width: 220,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 26, 188, 167),
                  borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email,
                      password: pass,
                    );
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // Retrieve the text the that user has entered by using the
                            // TextEditingController.
                            content: SizedBox(
                              height: 40,

                              // width: 450,
                              // margin: EdgeInsets.only(top: 200),
                              child: Center(
                                  child: SizedBox(
                                // width: 450.0,
                                height: 40,

                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 27.0,
                                      fontFamily: 'right'),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      for (int i = 0; i < 1; i++)
                                        TypewriterAnimatedText(
                                            'Account Created'),
                                    ],
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              )),
                            ),
                          );
                        });
                    Timer(Duration(seconds: 3), () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => editname()));
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'email-already-in-use') {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              // Retrieve the text the that user has entered by using the
                              // TextEditingController.
                              content: SizedBox(
                                height: 40,
                                // width: 450,
                                // margin: EdgeInsets.only(top: 200),
                                child: Center(
                                    child: SizedBox(
                                  // width: 450.0,
                                  height: 40,

                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 27.0,
                                        fontFamily: 'right'),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        for (int i = 0; i < 2; i++)
                                          TypewriterAnimatedText(
                                              'email-already-in-use'),
                                      ],
                                      onTap: () {
                                        print("Tap Event");
                                      },
                                    ),
                                  ),
                                )),
                              ),
                            );
                          });
                      Timer(Duration(seconds: 3), () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      });
                    } else if (e.code == 'weak-password') {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              // Retrieve the text the that user has entered by using the
                              // TextEditingController.
                              content: SizedBox(
                                height: 40,
                                // width: 450,
                                // margin: EdgeInsets.only(top: 200),
                                child: Center(
                                    child: SizedBox(
                                  // width: 450.0,
                                  height: 40,

                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 27.0,
                                        fontFamily: 'right'),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        for (int i = 0; i < 2; i++)
                                          TypewriterAnimatedText(
                                              'Weak-Password'),
                                      ],
                                      onTap: () {
                                        print("Tap Event");
                                      },
                                    ),
                                  ),
                                )),
                              ),
                            );
                          });
                      Timer(Duration(seconds: 3), () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      });
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text(
                  'Create',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'right', fontSize: 22),
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }

  getgall() async {
    var img = await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }
}
