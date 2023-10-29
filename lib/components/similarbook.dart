import 'package:ebookreaderuiapp/models/similarbookmodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_icons/line_icons.dart';

class Similarbook extends StatelessWidget {
  const Similarbook({super.key, required this.similarbookmodel});
  final Similarbookmodel similarbookmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: NetworkImage(similarbookmodel.image),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.blue,
                  ),
                  child: Text(
                    r"$" + similarbookmodel.price,
                    style: TextStyle(
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
                    similarbookmodel.favorite
                        ? LineIcons.heartAlt
                        : LineIcons.heart,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  similarbookmodel.title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 120,
                child: Text(
                  similarbookmodel.subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: similarbookmodel.rate,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    itemCount: 5,
                    itemSize: 22.0,
                    direction: Axis.horizontal,
                  ),
                  Text(
                    "(" + similarbookmodel.rate.toString() + ")",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
