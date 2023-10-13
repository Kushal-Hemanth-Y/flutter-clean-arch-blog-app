import 'package:flutter/material.dart';

void main() {
  runApp(const JournoApp());
}

class JournoApp extends StatelessWidget {
  const JournoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.pink,
      ),
    );
  }
}
