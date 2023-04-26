import 'package:emplayer/Models/music.dart';
import 'package:emplayer/home/vertSongs.dart';
import 'package:emplayer/library/miniplayer.dart';
import 'package:emplayer/library/music_playing_screen.dart';
import 'package:flutter/material.dart';

class SongContainer extends StatefulWidget {
  final Music music;
  const SongContainer(this.music, {super.key});

  @override
  State<SongContainer> createState() => _SongContainerState();
}

class _SongContainerState extends State<SongContainer> {
  @override
  Widget build(BuildContext context) {
    Music music = widget.music;
    String songName = widget.music.name;
    String artist = widget.music.artists;
    String url = widget.music.url;
    String image = widget.music.image;

    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 20, right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicPlayingScreen(music),
            ),
          );
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 250,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        songName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        artist,
                        style: const TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
