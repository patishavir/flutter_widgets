import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Widget010(),
    );
  }
}

class Widget010 extends StatefulWidget {
  const Widget010({Key? key}) : super(key: key);

  @override
  State<Widget010> createState() => _Widget010State();
}

class _Widget010State extends State<Widget010> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 180,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 1300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text('פטיש'),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 120 : 50;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: const Text(
            "Switch",
          ),
        )
      ],
    );
  }
}
