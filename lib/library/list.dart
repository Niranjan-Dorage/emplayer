import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emplayer/library/player.dart';
import 'package:flutter/material.dart';

class MusicListScreen extends StatelessWidget {
  const MusicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    player.pause();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Music'),
        ),
        body: Container(
          height: 200,
          width: 300,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("Music").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final userSnapshot = snapshot.data?.docs;
              if (userSnapshot!.isEmpty) {
                return const Text("no data");
              }
              return ListView.builder(
                  itemCount: userSnapshot.length,
                  itemBuilder: (context, index) {
                    return SongViewFormat(
                      userSnapshot[index]['name'],
                      userSnapshot[index]['imageUrl'],
                      userSnapshot[index]['audio'],
                      userSnapshot[index]['duration'],
                    );
                  });
            },
          ),
        ));
  }
}

class SongViewFormat extends StatelessWidget {
  var name;
  var imageUrl;
  var audio;
  var duration;
  SongViewFormat(this.name, this.imageUrl, this.audio, this.duration,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicPlayingScreen(name, imageUrl, audio),
            ));
      },
      child: Container(
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      right:
                          BorderSide(color: Color.fromARGB(255, 75, 62, 62)))),
              child: Hero(
                tag: name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(imageUrl),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.toString(),
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 75, 62, 62)),
                  ),
                  Text(
                    'Duartion: $duration',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 75, 62, 62)),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(Icons.play_arrow,
                    color: Color.fromARGB(255, 75, 62, 62)))
          ],
        ),
      ),
    );
  }
}
