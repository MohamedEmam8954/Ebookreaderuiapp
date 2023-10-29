import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebookreaderuiapp/models/continuereadingmodel.dart';
import 'package:flutter/material.dart';

class Continuereading extends StatelessWidget {
  const Continuereading({super.key, required this.continuereadingmodel});
  final Continuereadingmodel continuereadingmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            width: 160,
            height: 200,
            fit: BoxFit.cover,
            imageUrl: continuereadingmodel.image,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 100,
          child: Text(
            continuereadingmodel.Title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            maxLines: 1,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 150,
          child: Text(
            continuereadingmodel.subtitle,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.3)),
            maxLines: 1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                Container(
                  width: continuereadingmodel.perecentage,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              continuereadingmodel.perecentage != null
                  ? "${continuereadingmodel.perecentage}%"
                  : "",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3)),
              maxLines: 1,
            ),
          ],
        )
      ],
    );
  }
}
