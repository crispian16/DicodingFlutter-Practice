import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: AnimationPage(),
    ),
  );
}

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _size = 100.0;

  Tween<Color?> _colorTween =
      ColorTween(begin: Colors.blue, end: Colors.purple);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<Color?>(
              tween: _colorTween,
              duration: Duration(seconds: 3),
              builder: (context, Color? value, child) {
                return Container(
                  color: value,
                  height: _size,
                  width: _size,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
