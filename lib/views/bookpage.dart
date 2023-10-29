import 'package:ebookreaderuiapp/components/continuereadinglist.dart';
import 'package:ebookreaderuiapp/components/unreadbook.dart';

import 'package:ebookreaderuiapp/models/unbookreadmodel.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Bookstore extends StatelessWidget {
  Bookstore({super.key});
  final List<Unbookreadmodel> catgoryunread = [
    Unbookreadmodel(
      image: "https://covers.openlibrary.org/b/id/10362743-L.jpg",
      rate: 2.5,
      title: "A Court of Thorns and Roses",
      subtitle: "A Court of Thorns and Roses",
    ),
    Unbookreadmodel(
      image:
          "https://i.pinimg.com/564x/20/6c/8f/206c8f3b8f607ebc8fc47de2d986b710.jpg",
      rate: 1,
      title: "Where the crawdads sing",
      subtitle: "First large print edition.",
    ),
    Unbookreadmodel(
      image:
          "https://ccplwritersblock.files.wordpress.com/2016/12/a-tale-of-two-cities-book-cover.jpg",
      title: "A Tale of Two Cities by Charles Dickens",
      subtitle:
          "A Tale of Two Cities: Love, Sacrifice, and Revolution in the 18th Century",
      rate: 5,
    ),
    Unbookreadmodel(
      image: "https://i.ebayimg.com/images/g/crMAAOSwM1Ff~vLM/s-l640.jpg",
      title: "The Hunger Games by Suzanne Collins",
      subtitle: "The Hunger Games: Survival and Rebellion in a Dystopian World",
      rate: 3.5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              getfristsection(),
              const SizedBox(
                height: 30,
              ),
              getsecondsection(),
              const SizedBox(
                height: 30,
              ),
              getthirdsection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getfristsection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xffe8edf4),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search..",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const Badge(
          label: Text("4"),
          backgroundColor: Colors.blue,
          child: Icon(
            LineIcons.shoppingBag,
            size: 24,
          ),
        ),
      ],
    );
  }

  Widget getsecondsection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "continue reading(3)",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(height: 300, child: Continuereadinglist())
      ],
    );
  }

  Widget getthirdsection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Unread(3)",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: catgoryunread.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Unreadbook(unbookreadmodel: catgoryunread[index]),
              );
            },
          ),
        )
      ],
    );
  }
}
