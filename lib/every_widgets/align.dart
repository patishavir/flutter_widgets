import 'package:flutter/material.dart';

//! Align
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
      home: const Widget005(),
    );
  }
}

class Widget005 extends StatelessWidget {
  const Widget005({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120.0,
        width: double.infinity,
        color: Colors.blueGrey,
        child: const Align(
          alignment: Alignment.bottomLeft,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
