import 'package:emplayer/library/miniplayer.dart';
import 'package:emplayer/library/song_list.dart';
import 'package:flutter/material.dart';

class VerticleSongs extends StatefulWidget {
  String link;
  String PlaylistName;
  VerticleSongs(this.link, this.PlaylistName, {super.key});

  @override
  State<VerticleSongs> createState() => _VerticleSongsState();
}

class _VerticleSongsState extends State<VerticleSongs> {
  @override
  Widget build(BuildContext context) {
    String link = widget.link;
    String PlaylistName = widget.PlaylistName;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => NowPlaying(link, PlaylistName, ''),
            //     ),
            //   );
            // },
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(link), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
          child: Container(
            width: 130,
            height: 20,
            //color: Colors.amber,
            child: Text(
              widget.PlaylistName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            alignment: Alignment.center,
          ),
        )
      ],
    );
  }
}
