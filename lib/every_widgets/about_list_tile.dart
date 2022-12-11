import 'package:flutter/material.dart';

//! AboutListTile
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
      home: const Widget002(),
    );
  }
}

class Widget002 extends StatelessWidget {
  const Widget002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [
          Text('This is a text created by Flutter Mapp'),
        ],
      ),
    );
  }
}
