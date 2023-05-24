import 'package:flutter/material.dart';
import 'package:mapped/map_view.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mapped',
      home: MapView(),
    );
  }
}


