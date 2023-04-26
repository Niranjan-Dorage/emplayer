import 'package:emplayer/home/artistscovers.dart';
import 'package:emplayer/home/emotionbar.dart';
import 'package:emplayer/home/homititle.dart';
import 'package:emplayer/home/playlists.dart';
import 'package:emplayer/home/remixcovers.dart';
import 'package:emplayer/home/trendingsongs.dart';
import 'package:emplayer/home/wlcmsg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String email;
  HomePage(this.email);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Welcome(widget.email),
          Mood(),
          // Playlists(),
          // TrendingSongs(),
          // title('Your Top Artists'),
          // ArtistsCovers(),
          // RemixDeck(),
        ],
      ),
    );
  }
}
