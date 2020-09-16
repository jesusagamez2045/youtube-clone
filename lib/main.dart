import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/yotube_main.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      home: YoutubeMain(),
    );
  }
}