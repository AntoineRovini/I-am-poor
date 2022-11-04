import 'package:test_flutter/screen/character_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breaking Bad App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CharacterList(key: UniqueKey()),
    );
  }
}