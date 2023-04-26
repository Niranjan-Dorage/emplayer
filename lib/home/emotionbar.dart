import 'package:emplayer/library/list.dart';
import 'package:emplayer/library/song_list.dart';
import 'package:emplayer/library/test.dart';
import 'package:flutter/material.dart';

class Mood extends StatelessWidget {
  const Mood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF858e96),
              Color(0xFF60696b),
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        height: 400,
        //color: Color.fromRGBO(76, 175, 80, 1),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'MOOD',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xFF60efff),
                              Color(0xFF00ff87),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MusicListScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'PLEASURE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF40c9ff),
                                Color(0xFFe81cff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Calm'),
                            ),
                          );
                        },
                        child: Text(
                          'CALM',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Sad'),
                            ),
                          );
                        },
                        child: Text(
                          'SAD',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFfff95b),
                                Color(0xFFff930f),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Lonely'),
                            ),
                          );
                        },
                        child: Text(
                          'LONELY',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF60efff),
                                Color(0xFF0061ff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Ambient'),
                            ),
                          );
                        },
                        child: Text(
                          'AMBIENT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFf8acff),
                                Color(0xFF696eff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Boredom'),
                            ),
                          );
                        },
                        child: Text(
                          'BOREDOM',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF9bafd9),
                                Color(0xFF42047e),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Romantic'),
                            ),
                          );
                        },
                        child: Text(
                          'ROMANTIC',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF07f49e),
                                Color(0xFFf187fb),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongList('Revenge'),
                            ),
                          );
                        },
                        child: Text(
                          'REVENGE',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gotham',
                              color: Colors.black),
                          //selectionColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF43b692),
                                Color(0xFF099773),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 150,
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
