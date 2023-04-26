import 'dart:developer';

import 'package:emplayer/library/song_list.dart';
import 'package:emplayer/nav.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  final List<String> topGenres = ['Rock', 'Pop', 'Hip-Hop', 'Indie'];
  final List<String> browseAll = [
    'Podcasts',
    'New Releases',
    'Charts',
    'Mood',
    'Workout',
    'Decades',
    'Country',
    'Focus'
  ];
  final List<Gradient> colors = [
    LinearGradient(colors: [
      Color(0xFFFFCB6B),
      Color(0xFF3D8BFF),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFF439CFB),
      Color(0xFFF187FB),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFF1DBDE6),
      Color(0xFFF1515E),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFFAEFB2A),
      Color.fromARGB(255, 14, 134, 96),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFF42047E),
      Color(0xFF07F49E),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFFFC9305),
      Color(0xFFF20094),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFFAE1B1E),
      Color(0xFFFC9F32),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    LinearGradient(colors: [
      Color(0xFF9BAFD9),
      Color(0xFF103783),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
  ];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 100.0,
              floating: false,
              pinned: false,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyCustomForm()),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text(
                          'Your top genres',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(
                          4,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: GestureDetector(
                                onTap: () {
                                  // log(index.toString());
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SongList(
                                        topGenres[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      shape: BoxShape.rectangle,
                                      gradient: colors[index]),
                                  child: Text(
                                    topGenres[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          'Browse all',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(
                          browseAll.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: GestureDetector(
                                onTap: () {
                                  // log(index.toString());
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SongList(
                                        browseAll[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    gradient: colors[index],
                                  ),
                                  child: Text(
                                    browseAll[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 50,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(11),
      ),
      child: TextField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 17,
              fontWeight: FontWeight.bold),
          hintText: 'Artists,Songs or Podcasts',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    ));
  }
}
