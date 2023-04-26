import 'package:emplayer/library/rectangle.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Library",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Rectangle(0, "assets/images/icons/music.png", 0),
              Rectangle(1, "assets/images/icons/music.png", 1),
              Rectangle(2, "assets/images/icons/music.png", 2),
              Rectangle(3, "assets/images/icons/music.png", 3),
              Rectangle(4, "assets/images/icons/music.png", 4),
              Rectangle(5, "assets/images/icons/music.png", 5),
            ],
          ),
        ],
      ),
    );
  }
}
