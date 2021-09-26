import 'package:flutter/material.dart';
import './views/movieCenter/index.dart';
import './views/musicCenter/index.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demos',
      routes: {
        '/': (BuildContext context) => new VideoHome(),
        '/music': (BuildContext context) => new MusicHome()
      },
    );
  }
}