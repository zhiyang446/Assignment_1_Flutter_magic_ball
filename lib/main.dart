import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Center(
            child: Text('Ask_Me_Anything'),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ClickToChanger = 1;

  void magicball() {
    setState(
          () {
            ClickToChanger = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                magicball();
              },
              child: Image.asset('image/ball$ClickToChanger.png'),
            ),
          ),
        ],
      ),
    );
  }
}