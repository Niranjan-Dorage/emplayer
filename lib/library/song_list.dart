import 'package:emplayer/library/miniplayer.dart';
import 'package:emplayer/library/songcontain.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/Models/music.dart';

import '../home/homepage.dart';
import '../search/searchPage.dart';
import 'library.dart';

class SongList extends StatefulWidget {
  final String title;
  const SongList(this.title, {super.key});

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  final screens = [HomePage(""), SearchTab(), Library()];
  int currentScreenIndex = 0;

  List<Widget> createListOfSongs() {
    List<Music> musicList = Music.getMusic();

    List<Widget> musics =
        musicList.map((Music music) => SongContainer(music)).toList();

    return musics;
  }

  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: createListOfSongs(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          MiniPlayer(),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
