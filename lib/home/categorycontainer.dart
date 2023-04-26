import 'package:flutter/material.dart';
import 'package:emplayer/Models/category.dart';

import '../library/song_list.dart';

int index = 0;

class CreateCategoryContainer extends StatefulWidget {
  final Category category;
  const CreateCategoryContainer(this.category, {super.key});

  @override
  State<CreateCategoryContainer> createState() =>
      _CreateCategoryContainerState();
}

class _CreateCategoryContainerState extends State<CreateCategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongList(widget.category.title),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(widget.category.imgUrl),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                widget.category.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReturnNum {
  int getNum() {
    return index;
  }
}
