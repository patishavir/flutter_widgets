import 'package:flutter/material.dart';

//! AnimatedCrossFade
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
      home: const Widget009(),
    );
  }
}

class Widget009 extends StatefulWidget {
  const Widget009({Key? key}) : super(key: key);

  @override
  State<Widget009> createState() => _Widget009State();
}

class _Widget009State extends State<Widget009> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            // 'assets/icon/blue.jpg',
            'assets/icon/whale-emoji.png',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            // 'assets/icon/ocean.jpg',
            'assets/icon/dolphin-emoji.png',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
