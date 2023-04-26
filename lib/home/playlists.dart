import 'package:emplayer/Models/category.dart';
import 'package:emplayer/home/homititle.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/home/categorycontainer.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  List<Widget> createListOfCategories() {
    List<Category> categoryList = Category.getCategories();

    List<Widget> categories = categoryList
        .map((Category category) => CreateCategoryContainer(category))
        .toList();

    return categories;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF919bff),
              Color(0xFF133a94),
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            title('Your Playlists'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                scrollDirection: Axis.horizontal,
                children: createListOfCategories(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
