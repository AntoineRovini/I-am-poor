import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.purple.shade900,
          appBar: AppBar(
            centerTitle: true,
            title: Text('I Am Poor'),
            backgroundColor: Colors.indigo,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/running_wolf.png'),
            ),
          ),
        ),
      ),
    );