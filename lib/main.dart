import 'package:apifetch/Post.dart';
import 'package:apifetch/abc.dart';
import 'package:apifetch/fetch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: Post()),
    );
  }
}
