import 'package:ebookreaderuiapp/views/bookpage.dart';
import 'package:ebookreaderuiapp/views/homeview.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Rootview extends StatefulWidget {
  const Rootview({super.key});

  @override
  State<Rootview> createState() => _RootviewState();
}

class _RootviewState extends State<Rootview> {
  final List<Map<String, dynamic>> icons = const [
    {"icon": LineIcons.home, "text": "Home"},
    {"icon": LineIcons.book, "text": "bookstore"},
    {"icon": LineIcons.shoppingBag, "text": "Store"},
    {"icon": LineIcons.heart, "text": "Favorite"},
  ];

  int Select_index = 0, ck = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: Select_index,
        children: [
          Homeview(),
          Bookstore(),
          Center(child: Text("Store")),
          Center(child: Text("Favorite")),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: Select_index,
        onTap: (index) {
          setState(() {
            Select_index = index;
          });
        },
        items: List.generate(
          icons.length,
          (index) {
            Select_index = index;
            return SalomonBottomBarItem(
              icon: Icon(icons[index]["icon"]),
              title: Text(icons[index]["text"]),
            );
          },
        ),
      ),
    );
  }
}
