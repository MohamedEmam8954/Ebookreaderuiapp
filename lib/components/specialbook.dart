import 'package:ebookreaderuiapp/models/specialbookmodel.dart';
import 'package:ebookreaderuiapp/views/booksdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:line_icons/line_icons.dart';

class Specialbook extends StatelessWidget {
  Specialbook({super.key, required this.specialbookmodel});
  Specialbookmodel specialbookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Booksdata(
              favorite: specialbookmodel.favorite,
              image: specialbookmodel.image,
              price: specialbookmodel.price,
              rate: specialbookmodel.rate,
              subtitle: specialbookmodel.subtitle,
              title: specialbookmodel.title,
              pages: specialbookmodel.pages!,
              aboutbook: specialbookmodel.aboutbook!,
            );
          },
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: NetworkImage(specialbookmodel.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 100,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.blue,
                    ),
                    child: Text(
                      r"$" + specialbookmodel.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 105,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      specialbookmodel.favorite
                          ? LineIcons.heartAlt
                          : LineIcons.heart,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  child: Text(
                    specialbookmodel.title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ),
                Container(
                  width: 120,
                  child: Text(
                    specialbookmodel.subtitle,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    maxLines: 1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: specialbookmodel.rate,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      itemCount: 5,
                      itemSize: 22.0,
                      direction: Axis.horizontal,
                    ),
                    Text(
                      "(${specialbookmodel.rate})",
                      style: const TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
