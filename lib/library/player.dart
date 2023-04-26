import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

bool isPlaying = false;
double value = 0;
final player = AudioPlayer();
Duration? duration = const Duration(minutes: 05, seconds: 00);
var nameT;
var imageT;

void initPlayer(var name, var image, var audio) async {
  await player.setSource(UrlSource(audio.toString()));
  duration = await player.getDuration();
  await player.seek(const Duration(seconds: 0));
  nameT = name;
  imageT = image;
  print(duration);
}

class MusicPlayingScreen extends StatelessWidget {
  var name;
  var image;
  var audio;
  MusicPlayingScreen(this.name, this.image, this.audio, {super.key});

  @override
  Widget build(BuildContext context) {
    value = 0;
    isPlaying = false;
    initPlayer(name, image, audio);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 243, 238, 238),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                player.pause();
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          title: const Text('Now Playing'),
        ),
        backgroundColor: const Color.fromARGB(255, 243, 238, 238),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(200),
                child: Hero(
                  tag: name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(
                      image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 75, 62, 62)),
              ),
            ),
            const PauseOrPlay()
          ],
        ));
  }
}

class PauseOrPlay extends StatefulWidget {
  const PauseOrPlay({super.key});

  @override
  State<PauseOrPlay> createState() => _PauseOrPlayState();
}

class _PauseOrPlayState extends State<PauseOrPlay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider.adaptive(
          onChangeEnd: (newValue) async {
            setState(() {
              value = newValue;
            });
            await player.seek(Duration(seconds: newValue.toInt()));
          },
          min: 0.0,
          value: value,
          max: duration!.inSeconds.ceilToDouble() + 2.0,
          onChanged: (value) {},
          thumbColor: Colors.white,
          activeColor: const Color.fromARGB(255, 75, 62, 62),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${(value / 60).floor().toString().padLeft(2, '0')}: ${(value % 60).floor().toString().padLeft(2, '0')}",
                style: const TextStyle(color: Colors.black),
              ),
              const Spacer(),
              Text(
                "${(duration!.inMinutes).toString().padLeft(2, '0')} : ${(duration!.inSeconds % 60).toString().padLeft(2, '0')}",
                // '4:00',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          width: double.infinity,
          child: FloatingActionButton(
              onPressed: () {
                if (isPlaying) {
                  player.pause();
                } else {
                  player.resume();
                }
                isPlaying = !isPlaying;
                setState(() {});
                player.onPositionChanged.listen(
                  (Duration d) {
                    setState(() {
                      value = d.inSeconds.toDouble();
                      // print(value);
                    });
                  },
                );
              },
              shape: const CircleBorder(),
              child: Icon(isPlaying ? Icons.pause : Icons.play_arrow)),
        ),
      ],
    );
  }
}
