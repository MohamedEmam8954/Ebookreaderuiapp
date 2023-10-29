import 'package:flutter/material.dart';

class Booklisten extends StatelessWidget {
  const Booklisten(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title});
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Playing now",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              getfristsection(),
              SizedBox(
                height: 20,
              ),
              getsecondsection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getfristsection() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              image,
              height: 580,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget getsecondsection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              Container(
                width: 180,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0:34:15",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 17,
                ),
              ),
              Text(
                "5:34:15",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.skip_previous_outlined,
              color: Colors.blue,
              size: 40,
            ),
            CircleAvatar(
              radius: 25,
              child: Icon(
                Icons.play_arrow,
                size: 40,
              ),
            ),
            Icon(
              Icons.skip_next_outlined,
              color: Colors.blue,
              size: 40,
            ),
            SizedBox(
              width: 40,
            ),
          ],
        )
      ],
    );
  }
}
