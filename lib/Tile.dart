import 'package:coffee_shop/Widgets/BoldText.dart';
import 'package:flutter/material.dart';

import 'Widgets/LightText.dart';

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 270,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Container(
            height: 140,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/C.png")),
                borderRadius: BorderRadius.circular(30)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 96),
            child: Opacity(
              opacity: 0.6,
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    BoldText(
                      text: "4.2",
                      size: 13,
                      color: Colors.white,
                    )
                  ],
                ),
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(30))),
              ),
            ),
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 160),
        child: Container(
          height: 120,
          width: 170,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                  text: "Cappuccino",
                  size: 15,
                ),
                LightText(
                  text: "Without Milk",
                  color: Colors.white,
                  size: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BoldText(
                          text: "\$",
                          color: Colors.orange,
                        ),
                        BoldText(text: "430"),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
