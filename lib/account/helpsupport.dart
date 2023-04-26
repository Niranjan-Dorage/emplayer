import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
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
                  child: Text(
                    "Help & Support",
                    style: TextStyle(
                        fontFamily: 'right',
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Settingtab(help: "Raise An issue"),
            Settingtab(help: "Setting User Guide"),
            Settingtab(help: "App User Guide"),
            Settingtab(help: "What's New"),
            Settingtab(help: "Give Us Feedback"),
            Settingtab(help: "Contact Customer Care"),
          ]),
        ),
      )),
    );
  }
}

class Settingtab extends StatelessWidget {
  String help;
  // Widget page;
// required this.page
  Settingtab({required this.help});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            width: 260,
            margin: EdgeInsets.only(left: 10),
            child: Text(
              help,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins-Regular',
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
                iconSize: 34,
                onPressed: () {
                  // Navigator.pop(context);

                  // Navigator.pushReplacement(
                  //     context, MaterialPageRoute(builder: (context) => page));
                }),
          ),
        ],
      ),
    );
  }
}
