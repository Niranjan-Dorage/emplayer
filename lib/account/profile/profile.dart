// import 'dart:html';

import 'dart:io';

import 'package:emplayer/account/profile/edit_name.dart';
import 'package:flutter/material.dart';
import 'edit_age.dart';
import 'edit_contact.dart';
import 'edit_gender.dart';
import 'edit_gmail.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:image_picker/image_picker.dart';

class profile_page extends StatefulWidget {
  String username;
  profile_page({required this.username});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  File? file;
  ImagePicker image = ImagePicker();

  int temp = 0;
  String imglink =
      'https://i1.sndcdn.com/artworks-07lLa9CDDAxaxgQV-77McEw-t500x500.jpg';
  // File galleryFile;
  @override
  Widget build(BuildContext context) {
    // imageSelectorGallery() async {
    //   galleryFile = await ImagePicker.pickImage(
    //     source: ImageSource.Pgallery,
    //     // maxHeight: 50.0,
    //     // maxWidth: 50.0,
    //   );
    //   setState(() {});
    // }
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

//  Color.fromARGB(255, 251, 255, 0),
    ];

    const colorizeTextStyle = TextStyle(
      decoration: TextDecoration.none,
      fontSize: 26.0,
      letterSpacing: 0.3,
      // fontWeight: Fo3ntWeight.bold,

      fontFamily: 'Right',
    );

    Size size = MediaQuery.of(context).size;
    // if (temp > 0)

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          body: Container(
            decoration:const  BoxDecoration(
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
                Row(
                  children: [
                    Container(
                      child: IconButton(
                          icon:const  Icon(Icons.navigate_before_rounded),
                          color: Colors.white,
                          iconSize: 46,
                          onPressed: () {
                            Navigator.pop(context);
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => account()));
                          }),
                    ),
                    Container(
                      child:const  Text(
                        "My Profile",
                        style: TextStyle(
                            fontSize: 29,
                            fontFamily: "Right",
                            color: Colors.white,
                            letterSpacing: 0.4),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Largeimg(
                              imglink: imglink,
                            )));
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          // alignment: Alignment.center,
                          width: 130,
                          height: 130,
                          margin: const EdgeInsets.only(top: 45),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imglink)),
                            color:const  Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               const  SizedBox(
                  height: 8,
                ),
                Container(
                    margin:const  EdgeInsets.only(bottom: 10),
                    child: Center(
                        child: SizedBox(
                      // width: 250.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 27,
                          fontFamily: 'Agne',
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText(
                              widget.username,
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                              speed: const Duration(milliseconds: 2500),
                            ),
                            ColorizeAnimatedText(
                              widget.username,
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                              speed: const Duration(milliseconds: 2500),
                            ),
                            ColorizeAnimatedText(
                              widget.username,
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                              speed: const Duration(milliseconds: 2500),
                            ),
                            ColorizeAnimatedText(
                              widget.username,
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                              speed: const Duration(milliseconds: 2500),
                            ),
                            ColorizeAnimatedText(
                              widget.username,
                              textStyle: colorizeTextStyle,
                              colors: colorizeColors,
                              speed: const Duration(milliseconds: 2500),
                            ),
                            ColorizeAnimatedText(
                              widget.username,
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
                      ),
                    ))),
              const   SizedBox(
                  height: 8,
                ),
                Container(
                  margin:const  EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                          // color: Color.fromARGB(255, 255, 0, 0),
                          width: 220,
                          alignment: Alignment.centerLeft,
                          margin:
                            const   EdgeInsets.only(left: 10, top: 30, bottom: 20),
                          child:const  Text(
                            "Profile Photo",
                            style: TextStyle(
                              fontFamily: 'poppins-Regular',
                              fontWeight: FontWeight.w500,
                              wordSpacing: 2,
                              letterSpacing: 1,
                              fontSize: 19,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color:const  Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12)),
                        margin: EdgeInsets.only(
                            top: 24, left: size.width - 295, bottom: 20),
                        child: IconButton(
                          onPressed: () {
                            getgall();
                          },
                          icon: Image.asset(
                            'assets/images/icons/add-photo.png',
                            color:const  Color.fromARGB(255, 67, 66, 66),
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:const  EdgeInsets.only(left: 14),
                  child:const  Text(
                    "Name",
                    style:const  TextStyle(
                        fontSize: 22,
                        fontFamily: 'Right',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  ),
                ),
                Container(
                  child:  Row(
                    children: [
                      Container(
                        // color: Color.fromARGB(255, 255, 0, 0),

                        width: 250,
                        // color: Colors.red,
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          widget.username,
                          style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          // Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editname()));
                        }),
                        child: Container(
                          // width: 110,
                          // color: Colors.red,
                          // alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(left: size.width - 327),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 255, 242),
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: 400,
                  height: 35,
                  margin:const  EdgeInsets.only(top: 6, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color:const  Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:const  EdgeInsets.only(left: 15, top: 12),
                  child:const  Text(
                    "Contact",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontFamily: 'Right',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          "xxxxxxx811",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Poppins-Regular',
                              letterSpacing: 1,
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => editcontact()));
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: size.width - 327),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                fontFamily: 'Poopins-Regular',
                                color: Color.fromARGB(255, 0, 255, 242),
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: 400,
                  height: 35,
                  margin: EdgeInsets.only(top: 6, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 12),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Right',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          "MRANDERSON@GAMIL.COM",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => editgmail()));
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: size.width - 327),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 255, 242),
                                fontFamily: 'Poppins-Regular',
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: 400,
                  height: 35,
                  margin:const  EdgeInsets.only(top: 6, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color:const  Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:const  EdgeInsets.only(left: 15, top: 12),
                  child:const  Text(
                    "Age",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Right',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          "19",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => editage()));
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: size.width - 327),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                color: Color.fromARGB(255, 0, 255, 242),
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: 400,
                  height: 35,
                  margin: EdgeInsets.only(top: 6, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 12),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Right',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          "MALE",
                          style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 17),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => editgender()));
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: size.width - 327),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                color: Color.fromARGB(255, 0, 255, 242),
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: 400,
                  height: 35,
                  margin:
                      const EdgeInsets.only(top: 6, left: 10, right: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color:const  Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getgall() async {
    var img = await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }
}

class Largeimg extends StatelessWidget {
  String imglink;

  Largeimg({required this.imglink});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child:  Scaffold(
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                height: 400,

                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imglink)),
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                // height,
              ),
            ),
          )),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new GalleryAccess(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

