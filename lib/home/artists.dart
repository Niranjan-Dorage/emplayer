import 'package:emplayer/library/song_list.dart';
import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  String link;
  String ArtistName;
  Artists(this.link, this.ArtistName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Songs(ArtistName),
              //   ),
              // );
            },
            child: SizedBox(
              width: 120,
              height: 120,
              //color: Colors.amber,
              child: CircleAvatar(
                backgroundImage: NetworkImage(link),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: SizedBox(
            width: 120,
            height: 35,
            child: Text(
              ArtistName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            //color: Colors.green,
          ),
        )
      ],
    );
  }
}
