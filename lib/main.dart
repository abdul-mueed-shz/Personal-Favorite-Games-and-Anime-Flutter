import 'package:flutter/material.dart';
import 'package:untitled/pages/games.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/anime.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/anime': (context) => Anime(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
