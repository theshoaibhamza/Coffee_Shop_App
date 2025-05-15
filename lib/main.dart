// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:coffee_shop/HomePage.dart';
import 'package:coffee_shop/IntroPage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/home": (context) => Homepage(),
        "/intro": (context) => IntroPage()
      },
    );
  }
}
