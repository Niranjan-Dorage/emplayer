import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  bool val1 = true;
  bool val2 = false;
  bool val3 = true;
  bool val4 = false;
  bool val5 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      val5 = newValue5;
    });
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins-Regular'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    height: 10,
                  ),
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
                        child: Text(
                          "Account Setting",
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Right',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: 220,
                          margin: EdgeInsets.only(top: 30, left: 10),
                          child: Text(
                            "Display Language",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins-Regular',
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.4),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 30,
                            left: size.width - 335,
                          ),
                          child: Text(
                            "English",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins-Regular',
                                color: Color.fromARGB(255, 150, 148, 148),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.4),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 30,
                            // left: size.width - 304,
                          ),
                          child: IconButton(
                              icon: Icon(Icons.navigate_next_rounded),
                              color: Colors.white,
                              iconSize: 30,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Equalizer",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Regular',
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          left: size.width - 343,
                        ),
                        child: Text(
                          "off",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 150, 148, 148),
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 0),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Sleep Timer",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          left: size.width - 343,
                        ),
                        child: Text(
                          "off",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 150, 148, 148),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins-Regular',
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 0),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "Lyrics",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins-Regular',
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width - 343,
                        ),
                        height: 50,

                        child: Transform.scale(
                          scale: 1.1,
                          child: Switch(
                            value: val1,
                            onChanged: (onChanged) {
                              setState(() {
                                val1 = onChanged;
                              });
                            },
                            activeColor: Color.fromARGB(255, 178, 178, 178),
                            inactiveTrackColor:
                                Color.fromARGB(255, 0, 255, 255),
                            thumbColor: MaterialStateProperty.all(val1
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        // customSwitch('Abcd', val2, onChangeFunction2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Autoplay",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width - 343,
                        ),
                        height: 50,

                        child: Transform.scale(
                          scale: 1.1,
                          child: Switch(
                            value: val2,
                            onChanged: (onChanged) {
                              setState(() {
                                val2 = onChanged;
                              });
                            },
                            activeColor: Color.fromARGB(255, 178, 178, 178),
                            inactiveTrackColor:
                                Color.fromARGB(255, 0, 255, 255),
                            thumbColor: MaterialStateProperty.all(val2
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        // customSwitch('Abcd', val2, onChangeFunction2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Dark Mode",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width - 343,
                        ),
                        height: 50,

                        child: Transform.scale(
                          scale: 1.1,
                          child: Switch(
                            value: val3,
                            onChanged: (onChanged) {
                              setState(() {
                                val3 = onChanged;
                              });
                            },
                            activeColor: Color.fromARGB(255, 178, 178, 178),
                            inactiveTrackColor:
                                Color.fromARGB(255, 0, 255, 255),
                            thumbColor: MaterialStateProperty.all(val3
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        // customSwitch('Abcd', val2, onChangeFunction2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Data Saver",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width - 338,
                        ),
                        height: 50,

                        child: Transform.scale(
                          scale: 1.1,
                          child: Switch(
                            value: val4,
                            onChanged: (onChanged) {
                              setState(() {
                                val4 = onChanged;
                              });
                            },
                            activeColor: Color.fromARGB(255, 178, 178, 178),
                            inactiveTrackColor:
                                Color.fromARGB(255, 0, 255, 255),
                            thumbColor: MaterialStateProperty.all(val4
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        // customSwitch('Abcd', val2, onChangeFunction2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 220,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Auto Adjust Quality",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width - 303,
                        ),
                        height: 50,

                        child: Transform.scale(
                          scale: 1.1,
                          child: Switch(
                            value: val5,
                            onChanged: (onChanged) {
                              setState(() {
                                val5 = onChanged;
                              });
                            },
                            activeColor: Color.fromARGB(255, 178, 178, 178),
                            inactiveTrackColor:
                                Color.fromARGB(255, 0, 255, 255),
                            thumbColor: MaterialStateProperty.all(val5
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        // customSwitch('Abcd', val2, onChangeFunction2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 220,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          "Downloads",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          left: size.width - 342,
                        ),
                        child: Text(
                          "215 MB",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 150, 148, 148),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 0),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Download Setting",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 0,
                          left: size.width - 329,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 13),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]),
                    height: 33,
                    margin:
                        EdgeInsets.only(top: 12, left: 4, right: 4, bottom: 10),
                        
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 59, 59, 59),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Mobile Notifications",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 0,
                          left: size.width - 329,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Email Notifications",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 0,
                          left: size.width - 329,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Terms & Privacy",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0, left: size.width - 329),
                        child: IconButton(
                            icon: Icon(Icons.navigate_next_rounded),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

Widget customSwitch(bool val, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.only(top: 22, left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoSwitch(
          trackColor: Colors.grey,
          activeColor: Color.fromARGB(255, 0, 146, 159),
          value: val,
          onChanged: (newValue) {
            onChangeMethod(newValue);
          },
        )
      ],
    ),
  );
}
