import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emplayer/library/music_playing_screen.dart';
import 'package:emplayer/library/song_list.dart';
import 'package:emplayer/library/songcontain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TestMusic extends StatelessWidget {
  const TestMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("Music").snapshots(),
            // initialData: initialData,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final userSnapshot = snapshot.data?.docs;
              if (userSnapshot!.isEmpty) {
                return Text("no data");
              }
              return ListView.builder(
                itemCount: userSnapshot.length,
                itemBuilder: (BuildContext context, int index) {
                  print(userSnapshot[0]);
                  return Container(height: 200,
                  width: 200,
                    child: MusicPlayingScreen(userSnapshot[index]['audio']));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
