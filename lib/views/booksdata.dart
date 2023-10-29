import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:ebookreaderuiapp/components/similarbooklist.dart';
import 'package:ebookreaderuiapp/views/booklistien.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Booksdata extends StatefulWidget {
  const Booksdata(
      {super.key,
      required this.favorite,
      required this.image,
      required this.price,
      required this.rate,
      required this.subtitle,
      required this.title,
      required this.pages,
      required this.aboutbook});
  final String image;
  final bool favorite;
  final String price;
  final String title;
  final String subtitle;
  final double rate;
  final int pages;
  final String aboutbook;

  @override
  State<Booksdata> createState() => _BooksdataState();
}

class _BooksdataState extends State<Booksdata> {
  List storeTags = [
    {"label": "Education", "color": const Color(0xFF7871aa)},
    {"label": "Self-development", "color": const Color(0xFF7fb069)},
    {"label": "Psychology", "color": const Color(0xFFcc7e85)},
    {"label": "Fantasy", "color": const Color(0xFF76818e)},
    {"label": "Adventures", "color": const Color(0xFFcf4d6f)},
    {"label": "Science-fiction", "color": const Color(0xFFc86fc9)},
    {"label": "Detectives", "color": const Color(0xFF8f8073)}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: SafeArea(child: getappbar()),
      ),
      body: getbody(),
    );
  }

  Widget getappbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 180,
          color: Colors.black.withOpacity(0.2),
        ),
        BlurryContainer(child: Container()),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Booklisten(
                                image: widget.image,
                                subtitle: widget.subtitle,
                                title: widget.title);
                          },
                        ));
                      },
                      icon: const Icon(Icons.headphones),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        getbottomsheetsettings();
                      },
                      icon: const Icon(Icons.settings),
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: double.infinity,
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: double.infinity,
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20,
                      ),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget getbody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      r"$" + widget.price,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "price",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      widget.pages.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "pages",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      widget.rate.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "rating",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const Text(
            "About",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          RichText(
            text: TextSpan(
                text: widget.aboutbook,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5),
                ),
                children: const [
                  TextSpan(
                    text: "more...",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  )
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            runSpacing: 10,
            children: List.generate(storeTags.length, (index) {
              return Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: storeTags[index]["color"],
                ),
                child: Text(
                  storeTags[index]["label"],
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/writer.jpg",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Tahereh mafi",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "1869_1900",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "32 books",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 290),
                  child: Text(
                    "Reviews",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/farag.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "frag",
                          style: TextStyle(fontSize: 18),
                        ),
                        RatingBarIndicator(
                          rating: 5,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          itemCount: 5,
                          itemSize: 15.0,
                          direction: Axis.horizontal,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "i want to give this book 5 stars but just",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "couldn't. there are so many f-bombs i almost",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "stopped reading it but i kept at it.Glad i did too.",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "But i will never read it again or listen to it beacause i dont need that word in my mind.why oh why is it so necessary to the story",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/zokshjpg.jpg",
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mohamed ayman",
                              style: TextStyle(fontSize: 18),
                            ),
                            RatingBarIndicator(
                              rating: 3.5,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "for once i actually thought colleen wasn't going",
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(
                              "to make my cry ",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "more..",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Similar book",
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
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(height: 320, child: Listbooksimilar()),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  getbottomsheetsettings() {
    List Themes = [
      Color(0xfffffeff),
      Color(0xff000000),
      Color(0xffe9c58d),
    ];
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(color: Color(0xffc0cede)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(Themes.length, (index) {
                          if (index == 0) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.black.withOpacity(0.2),
                                child: CircleAvatar(
                                  backgroundColor: Themes[index],
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffc0cede),
                                radius: 22,
                                child: CircleAvatar(
                                  backgroundColor: Themes[index],
                                ),
                              ),
                            );
                          }
                        }),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text(
                                "Tt",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                "TT",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          width: double.infinity,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          width: 180,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 175),
                        child: Container(
                          alignment: Alignment.center,
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.light_mode,
                        size: 20,
                      ),
                      Icon(
                        Icons.light_mode,
                        size: 35,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          width: double.infinity,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          width: 100,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                          alignment: Alignment.center,
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aa",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Aa",
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
