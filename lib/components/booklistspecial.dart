import 'package:ebookreaderuiapp/components/specialbook.dart';
import 'package:ebookreaderuiapp/models/specialbookmodel.dart';
import 'package:flutter/material.dart';

class List_bookspecial extends StatelessWidget {
  List_bookspecial({super.key});
  final List<Specialbookmodel> specialbook = [
    Specialbookmodel(
      image:
          "https://pics.craiyon.com/2023-06-02/7f61d53b21984e2480803932e81e2676.webp",
      favorite: true,
      price: "5.00",
      title: "Shatter me",
      subtitle: "1st ed.",
      rate: 4.5,
      pages: 300,
      aboutbook:
          "Shatter Me by Tahereh Mafi is a young adult dystopian novel where the protagonist, Juliette, has a lethal touch. She's released from isolation by a repressive government and faces a choice: work for them or join a rebellion. The book explores themes of power, love, and self-discovery in a fractured world ",
    ),
    Specialbookmodel(
      image: "https://covers.openlibrary.org/b/id/10362743-L.jpg",
      favorite: false,
      price: "8.99",
      title: "A Court of Thorns and Roses",
      subtitle: "A Court of Thorns and Roses",
      rate: 2.5,
      pages: 87,
      aboutbook:
          "A Court of Thorns and Roses by Sarah J. Maas is a young adult fantasy novel where mortal huntress Feyre is drawn into the world of powerful faeries. She must confront dark threats and navigate a complex romance in a divided realm. The book's rich world-building and compelling characters have made it a beloved choice for fantasy enthusiasts",
    ),
    Specialbookmodel(
      image:
          "https://i.pinimg.com/564x/20/6c/8f/206c8f3b8f607ebc8fc47de2d986b710.jpg",
      favorite: false,
      price: "10.00",
      title: "Where the crawdads sing",
      subtitle: "First large print edition.",
      rate: 1,
      pages: 100,
      aboutbook:
          "Where the Crawdads Sing by Delia Owens is a novel set in Barkley Cove, North Carolina. It tells the story of Kya Clark, the Marsh Girl, who grows up isolated in the 'marshes', and a murder mystery that unfolds in 1969. The book is celebrated for its evocative writing and exploration of nature, loneliness, and human relationships",
    ),
    Specialbookmodel(
      image:
          "https://cdn.myportfolio.com/54e930d2-9a9f-474e-a793-482541dee016/0a1607e1-ad9b-4648-be18-be62d71b4315_rwc_0x466x1866x1458x1866.jpg?h=094edb10035e763e1e95ff9af42af8f2",
      favorite: true,
      price: "2.55",
      title: "The Seven Husbands of Evelyn Hugo",
      subtitle: "A Novel",
      rate: 5,
      pages: 50,
      aboutbook:
          "The Seven Husbands of Evelyn Hugo by Taylor Jenkins Reid is a novel that delves into the life of Evelyn Hugo, a legendary Hollywood actress who shares her life story with a journalist. The narrative explores love, fame, identity, and complex relationships in the world of show business.",
    ),
    Specialbookmodel(
      image:
          "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1627673847l/58346977.jpg",
      favorite: true,
      price: "4.55",
      title: "Reminders of Him",
      subtitle: "A Novel",
      rate: 4,
      pages: 30,
      aboutbook:
          "A troubled young mother yearns for a shot at redemption in this heartbreaking yet hopeful story from #1 New York Times bestselling author Colleen Hoover. After serving five years in prison for a tragic mistake, Kenna Rowan returns to the town where it all went wrong, hoping to reunite ",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: specialbook.length,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 15),
          child: Specialbook(
            specialbookmodel: specialbook[index],
          ),
        );
      },
    );
  }
}
