import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebookreaderuiapp/models/unbookreadmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Unreadbook extends StatelessWidget {
  const Unreadbook({super.key, required this.unbookreadmodel});
  final Unbookreadmodel unbookreadmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            width: 100,
            height: 150,
            fit: BoxFit.cover,
            imageUrl: unbookreadmodel.image,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            width: 150,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  unbookreadmodel.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  unbookreadmodel.subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: unbookreadmodel.rate,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      direction: Axis.horizontal,
                    ),
                    Text(
                      "(${unbookreadmodel.rate})",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
