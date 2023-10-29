import 'package:ebookreaderuiapp/components/continue_reading.dart';
import 'package:ebookreaderuiapp/models/continuereadingmodel.dart';
import 'package:flutter/material.dart';

class Continuereadinglist extends StatelessWidget {
  Continuereadinglist({super.key});
  final List<Continuereadingmodel> catgory = [
    Continuereadingmodel(
      image:
          "https://pics.craiyon.com/2023-06-02/7f61d53b21984e2480803932e81e2676.webp",
      Title: "Shatter me",
      subtitle: "1st ed.",
      perecentage: 80.00,
    ),
    Continuereadingmodel(
      image:
          "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1627673847l/58346977.jpg",
      Title: "Reminders of Him",
      subtitle: "A Novel",
      perecentage: 67.00,
    ),
    Continuereadingmodel(
      image:
          "https://m.media-amazon.com/images/I/91SpClgnqDL._AC_UF1000,1000_QL80_.jpg",
      Title: "To Kill a Mockingbird by Harper Lee",
      subtitle:
          "To Kill a Mockingbird: Justice and Prejudice in a Southern Town1st ed.",
      perecentage: 20.00,
    ),
    Continuereadingmodel(
      image:
          "https://prodimage.images-bn.com/pimages/9780345806789_p0_v2_s1200x630.jpg",
      Title: "The Shining by Stephen King",
      subtitle: "The Shining: Horror and Madness at the Overlook Hotel",
      perecentage: 0.00,
    ),
    Continuereadingmodel(
      image:
          "https://cdn.myportfolio.com/54e930d2-9a9f-474e-a793-482541dee016/0a1607e1-ad9b-4648-be18-be62d71b4315_rwc_0x466x1866x1458x1866.jpg?h=094edb10035e763e1e95ff9af42af8f2",
      Title: "The Seven Husbands of Evelyn Hugo",
      subtitle: "The Many Faces of Evelyn Hugo",
      perecentage: 0.00,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: catgory.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Continuereading(continuereadingmodel: catgory[index]),
        );
      },
    );
  }
}
