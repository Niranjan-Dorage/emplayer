import 'package:emplayer/account/helpsupport.dart';
import 'package:emplayer/account/login/login.dart';
import 'package:flutter/material.dart';
import 'profile/profile.dart';
import 'setting_page.dart';
import 'history_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class account extends StatelessWidget {
  String email;
  account(this.email);
  String imglink =
      'https://i1.sndcdn.com/artworks-07lLa9CDDAxaxgQV-77McEw-t500x500.jpg';
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 234, 255, 250),
      Color.fromARGB(255, 0, 255, 183),
      Color.fromARGB(255, 22, 96, 255),
      Color.fromARGB(255, 255, 59, 59),
      Color.fromARGB(255, 251, 255, 0),
      Color.fromARGB(255, 22, 96, 255),
      Color.fromARGB(255, 255, 59, 59),
      Colors.yellow,
      Color.fromARGB(255, 228, 54, 244),
      Color.fromARGB(255, 0, 0, 0),
    ];

    const colorizeTextStyle = TextStyle(
      decoration: TextDecoration.none,
      fontSize: 28.0,
      letterSpacing: 0.3,
      fontFamily: 'Right',
    );

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 24, 24, 24),
              Color.fromARGB(255, 82, 82, 82),
              Color.fromARGB(255, 24, 24, 24),
              Color.fromARGB(255, 0, 0, 0),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Container(
              height: 16,
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 25, bottom: 20),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.4),
                  ),
                ),
              )
            ]),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Largeimg(
                                imglink: imglink,
                              )));
                    }),
                    child: Container(
                      // alignment: Alignment.centerLeft,
                      width: 70,
                      height: 70,

                      // width: 90,
                      // height: 90,
                      margin: const EdgeInsets.only(right: 13, left: 13),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(imglink)),
                          color: const Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Container(
                    width: 240,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                        ColorizeAnimatedText(
                          email,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: const Duration(milliseconds: 2500),
                        ),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile_page(
                        username: "Alan Walker",
                      ),
                    ));
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(
                    top: 30, left: 7, right: 6, bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      // height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 230,
                      // color: Colors.red,
                      // alignment: Alignment.centerLeft,

                      // margin: EdgeInsets.only(left: s10),
                      child: Text(
                        " My Profile",
                        style: TextStyle(
                          fontFamily: 'poppins-Regular',
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(left: size.width - 350),
                      // alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => profile_page(
                                username: "Alan Walker",
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const setting()));
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(left: 7, right: 5, bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    // color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 0),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/icons/setting2.png',
                        width: 24,
                        height: 24,
                        fit: BoxFit.fill,
                        // fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(
                        width: 230,
                        // margin: EdgeInsets.only(left: size.width / 21),
                        child: Text(
                          " Account Setting",
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontWeight: FontWeight.w700,
                            wordSpacing: 0,
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width - 350),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => setting()));
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(
                    top: 2, left: 7, right: 6, bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    // color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(top: 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.history_rounded,
                        size: 31,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                        width: 230,
                        child: Text(
                          " History & Privacy",
                          style: TextStyle(
                            fontFamily: 'poppins-Regular',
                            fontWeight: FontWeight.w700,
                            wordSpacing: 0,
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width - 350),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => help()));
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(
                    top: 2, left: 7, right: 6, bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    // color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.only(top: 0),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.headphones,
                        size: 29,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                        width: 230,
                        child: Text(
                          " Help & Support",
                          style: TextStyle(
                            fontFamily: 'poppins-Regular',
                            fontWeight: FontWeight.w700,
                            wordSpacing: 0,
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width - 350),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => help()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
       if(email=="Username")
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Loginpage()));
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(
                    top: 2, left: 7, right: 6, bottom: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 50,
                      margin: const EdgeInsets.only(left: 0),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.login_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        width: 230,
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          " Login",
                          style: TextStyle(
                            fontFamily: 'poppins-Regular',
                            fontWeight: FontWeight.w700,
                            wordSpacing: 0,
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width - 355),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Loginpage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),     
            GestureDetector(
            
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: SizedBox(
                          height: 50,
                          // width: 450,
                          // margin: EdgeInsets.only(top: 200),
                          child: Center(
                              child: SizedBox(
                            // width: 450.0,
                            height: 50,

                            child: DefaultTextStyle(
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 27.0,
                                  fontFamily: 'right'),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  for (int i = 0; i < 30; i++)
                                    TypewriterAnimatedText('Under Process'),
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
              },
              child: Container(
                height: 43,
                margin: const EdgeInsets.only(
                    top: 2, left: 7, right: 6, bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.logout_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        width: 230,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          " Logout",
                          style: TextStyle(
                            fontFamily: 'poppins-Regular',
                            fontWeight: FontWeight.w700,
                            wordSpacing: 0,
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width - 355),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 30,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  // Retrieve the text the that user has entered by using the
                                  // TextEditingController.
                                  content: SizedBox(
                                    height: 50,
                                    width: 450,
                                    // margin: EdgeInsets.only(top: 200),
                                    child: Center(
                                        child: SizedBox(
                                      width: 450.0,
                                      height: 50,
                                      child: DefaultTextStyle(
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 27.0,
                                            fontFamily: 'right'),
                                        child: AnimatedTextKit(
                                          animatedTexts: [
                                            for (int i = 0; i < 30; i++)
                                              TypewriterAnimatedText(
                                                  'Under Process'),
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
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
