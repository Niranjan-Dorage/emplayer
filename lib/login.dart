import 'package:emplayer/account/profile/edit_age.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(11),
              ),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lobster",
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 19,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 19,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold),
                  hintText: 'Gmail',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 12),
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(11),
              ),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontFamily: "Lobster",
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 19,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 19,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold),
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins-Regular',
                    color: Color.fromARGB(255, 50, 220, 250)),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                height: 45,
                width: 220,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 188, 167),
                    borderRadius: BorderRadius.circular(50)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'right', fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Center(
              child: Text(
                'New User? Create Account',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
