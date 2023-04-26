import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:emplayer/account/account_page.dart';
import 'package:emplayer/account/profile/edit_age.dart';
import 'package:emplayer/home/homepage.dart';
import 'package:emplayer/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:emplayer/account/login/new_user.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String email = "", pass = "", temp = "";
    int i = 0;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 21, 21, 21),
            Color.fromARGB(255, 51, 51, 51),
            Color.fromARGB(255, 0, 0, 0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        // height: 1000,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.only(top: 110, bottom: 15),
              child: Image.asset(
                'assets/images/icons/loogo.png',

                // fit: BoxFit.fill,
                // fit: BoxFit.fill,
              ),
              height: 180,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) => email = value,
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
                  hintText: 'Enter Gmail',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
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
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 45,
                width: 220,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 188, 167),
                    borderRadius: BorderRadius.circular(59)),
                child: TextButton(
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email, password: pass);

                      Navigator.pop(context);

                      email = email.replaceAll('@gmail.com', "");
                      email = email.replaceAll('@GMAIL.COM', "");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyApp(email)));
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
                                        fontSize: 22.0,
                                        fontFamily: 'right'),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        for (int i = 0; i < 1; i++)
                                          TypewriterAnimatedText('Logged In'),
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyApp(email)));
                      });
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        // print("user not found");
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
                                          fontSize: 22.0,
                                          fontFamily: 'right'),
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          for (int i = 0; i < 1; i++)
                                            TypewriterAnimatedText(
                                                'User Not Found'),
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
                        });
                      } else if (e.code == 'wrong-password') {
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
                                          fontSize: 22.0,
                                          fontFamily: 'right'),
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          for (int i = 0; i < 1; i++)
                                            TypewriterAnimatedText(
                                                'Wrong Password'),
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
                        });

                        print('Wrong password provided for that user.');
                      } else
                        () {};
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'right', fontSize: 22),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 36,
                width: 150,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 190, 190, 190),
                    borderRadius: BorderRadius.circular(59)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyApp("Username")));
                  },
                  child: Text(
                    'Guest',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'right',
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins-Regular',
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            SizedBox(
              height: size.height - 650,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new_user()));
              },
              child: Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  // width: 190,
                  child: Text(
                    'New User? Create Account',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomSheet:
    );
  }
}
