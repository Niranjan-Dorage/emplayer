import 'package:audioplayers/audioplayers.dart';
import 'package:emplayer/Models/music.dart';
import 'package:flutter/material.dart';

class MusicPlayingScreen extends StatefulWidget {
  final Music music;
  const MusicPlayingScreen(this.music, {super.key});

  @override
  State<MusicPlayingScreen> createState() => _MusicPlayingScreenState();
}

class _MusicPlayingScreenState extends State<MusicPlayingScreen> {
  late AudioPlayer audioPlayer;

  Duration duration = const Duration();
  Duration position = const Duration();

  bool isPlaying = false;
  bool isPaused = false;
  bool isLooped = false;

  late Music music;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    music = widget.music;

    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
      });
    });

    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });

    audioPlayer.setSource(UrlSource(widget.music.url));

    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        position = const Duration(seconds: 0);
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xFFe536ab),
                    Color(0xFF5C03BC),
                    Color(0xFF0E0725),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF9BAFD9),
                              Color(0xFF103783),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(music.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      music.name,
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      music.artists,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Slider.adaptive(
                activeColor: Colors.white,
                inactiveColor: Colors.white.withOpacity(0.3),
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (double val) {
                  setState(() {
                    audioPlayer.seek(Duration(seconds: val.toInt()));
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${position.toString().split(".")[0].split(":")[1]}:${position.toString().split(".")[0].split(":")[2]}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "${duration.toString().split(".")[0].split(":")[1]}:${duration.toString().split(".")[0].split(":")[2]}",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 10, width: 10),
                // GestureDetector(
                //   onTap: () {},
                //   child: isPlaying
                //       ? Icon(
                //           Icons.repeat_on_rounded,
                //           size: 33,
                //         )
                //       : Icon(
                //           Icons.repeat_rounded,
                //           size: 33,
                //         ),
                // ),
                const SizedBox(height: 20, width: 20),
                const Icon(
                  Icons.skip_previous_rounded,
                  size: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    if (!isPlaying) {
                      await audioPlayer.play(UrlSource(music.url));
                      setState(() {
                        isPlaying = true;
                      });
                    } else if (isPlaying) {
                      await audioPlayer.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  child: isPlaying
                      ? const Icon(
                          Icons.pause_circle_filled_rounded,
                          size: 70,
                        )
                      : const Icon(
                          Icons.play_circle_fill_rounded,
                          size: 70,
                        ),
                ),
                const Icon(
                  Icons.skip_next_rounded,
                  size: 40,
                ),
                const SizedBox(height: 20, width: 20),
                // GestureDetector(
                //   onTap: () {},
                //   child: isPlaying
                //       ? Icon(
                //           Icons.favorite_rounded,
                //           color: Colors.red,
                //           size: 33,
                //         )
                //       : Icon(
                //           Icons.favorite_outline_rounded,
                //           size: 33,
                //         ),
                // ),
                const SizedBox(height: 10, width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
