// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:coffee_shop/HomePage.dart';
import 'package:coffee_shop/Widgets/BoldText.dart';
import 'package:coffee_shop/Widgets/LightText.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/cofee.png"),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Homepage();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: BoldText(
                  size: 30,
                  text: "Coffee Shop",
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          LightText(
            size: 15,
            text: "   We Have The Best Taste.\nNot Even the Asia but World!",
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
