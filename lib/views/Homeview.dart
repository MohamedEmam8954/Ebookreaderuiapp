import 'package:ebookreaderuiapp/components/booklistspecial.dart';

import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class Homeview extends StatelessWidget {
  Homeview({super.key});
  final List<dynamic> intersted = [
    {"color": Color(0xff445d86), "text": "Education"},
    {"color": Color(0xff4a6634), "text": "Self_development"},
    {"color": Color(0xff9c5f61), "text": "Psychology"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello,Mohamed",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/mohamed.jpg'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "search...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Badge(
                        label: Text("3"),
                        backgroundColor: Colors.blue,
                        child: Icon(
                          LineIcons.shoppingBag,
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 135,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quote of the Day",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "i'd rather have roses on my table than ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "diamonds on my neck ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Emma Goldman ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Reader today",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/image.jpg",
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Top 10 books for self_Development",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: intersted[index]["color"],
                        ),
                        child: Text(
                          intersted[index]["text"],
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.only(left: 10)),
                    itemCount: intersted.length,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special for you",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "see all",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(height: 320, child: List_bookspecial()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
