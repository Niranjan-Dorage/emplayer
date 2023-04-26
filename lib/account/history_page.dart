import 'package:flutter/material.dart';
import 'setting_page.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  bool val1 = false;
  bool val2 = true;
  bool val3 = true;
  bool val4 = true;
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
                      "History & Privacy",
                      style: TextStyle(
                          fontFamily: 'Right',
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    // color: Colors.red,
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      "Clear Play History",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: size.width - 321),
                    child: Text(
                      "Clear",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 255, 221),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    margin: EdgeInsets.only(top: 27, left: 10),
                    child: Text(
                      "Clear Search History",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27, left: size.width - 321),
                    child: Text(
                      "Clear",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 255, 221),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      "Stop Play History",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17, left: size.width - 327),
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
                        inactiveTrackColor: Color.fromARGB(255, 0, 255, 255),
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
                    width: 250,
                    margin: EdgeInsets.only(top: 27, left: 10),
                    child: Text(
                      "Stop Search History",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: size.width - 327),
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
                        inactiveTrackColor: Color.fromARGB(255, 0, 255, 255),
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
                      width: 250,
                      margin: EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        "Manage All Activities",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1.2,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )),
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 20, left: size.width - 315),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 37,
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 250,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1.2,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )),
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 8, left: size.width - 315),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 37,
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 250,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Ads Settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1.2,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )),
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 10, left: size.width - 315),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 37,
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 250,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1.2,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )),
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 8, left: size.width - 315),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 37,
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 250,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "About App",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0,
                          letterSpacing: 1.2,
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )),
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 10, left: size.width - 315),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded),
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: 37,
                        onPressed: () {},
                      ))
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
