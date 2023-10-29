import 'package:ebookreaderuiapp/views/rootapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Ebookreaderui());
}

class Ebookreaderui extends StatelessWidget {
  const Ebookreaderui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rootview(),
    );
  }
}
