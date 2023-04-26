import 'package:emplayer/library/song_list.dart';
import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  final int x;
  final String iconName;
  final int y;
  const Rectangle(this.x, this.iconName, this.y, {super.key});

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  List<String> name = [
    "Downloads",
    "Favorites",
    "Saved Playlists",
    "Albums",
    "Liked Songs",
    "Playlist"
  ];
  List<int> songNum = [105, 1023, 23, 12, 23, 54];
  final List<Gradient> colors = [
    const LinearGradient(
      colors: [
        Color(0xFFFFCB6B),
        Color(0xFF3D8BFF),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF439CFB),
        Color(0xFFF187FB),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF1DBDE6),
        Color(0xFFF1515E),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFFAEFB2A),
        Color.fromARGB(255, 14, 134, 96),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF42047E),
        Color(0xFF07F49E),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFFFC9305),
        Color(0xFFF20094),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFFAE1B1E),
        Color(0xFFFC9F32),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF9BAFD9),
        Color(0xFF103783),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String iconName = widget.iconName;
    int x = widget.x;
    int y = widget.y;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongList(name[x]),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: colors[y],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      iconName,
                      height: 50,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF2B2D42),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      name[x],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 5),
                    child: Text(
                      songNum[x].toString() + " " + name[x],
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.navigate_next_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SongList(name[x]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
