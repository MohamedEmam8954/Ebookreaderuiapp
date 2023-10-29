import 'package:ebookreaderuiapp/components/similarbook.dart';

import 'package:ebookreaderuiapp/models/similarbookmodel.dart';

import 'package:flutter/material.dart';

class Listbooksimilar extends StatelessWidget {
  Listbooksimilar({super.key});
  final List<Similarbookmodel> similarbook = [
    Similarbookmodel(
      image:
          "https://m.media-amazon.com/images/I/91SpClgnqDL._AC_UF1000,1000_QL80_.jpg",
      favorite: false,
      price: "20.00",
      title: "To Kill a Mockingbird by Harper Lee",
      subtitle:
          "To Kill a Mockingbird: Justice and Prejudice in a Southern Town1st ed.",
      rate: 5.00,
    ),
    Similarbookmodel(
      image:
          "https://m.media-amazon.com/images/I/91YmhPEzlaL._AC_UF1000,1000_QL80_.jpg",
      favorite: true,
      price: "2.00",
      title: "Pride and Prejudice by Jane Austen",
      subtitle: "Pride and Prejudice: Love and Class in Regency England",
      rate: 4,
    ),
    Similarbookmodel(
      image: "https://i.ebayimg.com/images/g/crMAAOSwM1Ff~vLM/s-l640.jpg",
      favorite: true,
      price: "50.00",
      title: "The Hunger Games by Suzanne Collins",
      subtitle: "The Hunger Games: Survival and Rebellion in a Dystopian World",
      rate: 3.5,
    ),
    Similarbookmodel(
      image:
          "https://ccplwritersblock.files.wordpress.com/2016/12/a-tale-of-two-cities-book-cover.jpg",
      favorite: true,
      price: "100.00",
      title: "A Tale of Two Cities by Charles Dickens",
      subtitle:
          "A Tale of Two Cities: Love, Sacrifice, and Revolution in the 18th Century",
      rate: 5,
    ),
    Similarbookmodel(
      //
      image:
          "https://prodimage.images-bn.com/pimages/9780345806789_p0_v2_s1200x630.jpg",
      favorite: false,
      price: "150.00",
      title: "The Shining by Stephen King",
      subtitle: "The Shining: Horror and Madness at the Overlook Hotel",
      rate: 2.5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: similarbook.length,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 15),
          child: (Similarbook(
            similarbookmodel: similarbook[index],
          )),
        );
      },
    );
  }
}
