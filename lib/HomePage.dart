// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, file_names, sort_child_properties_last, sized_box_for_whitespace

import 'package:coffee_shop/Tile.dart';
import 'package:coffee_shop/Widgets/BoldText.dart';
import 'package:coffee_shop/Widgets/LightText.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.white),
              label: "",
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon

                      Container(
                        child: Icon(
                          Icons.apps_outlined,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)),
                      ),

                      // User Image

                      Container(
                        child: Image.asset("assets/images/me.png"),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                BoldText(
                  text: "Find the best\ncofee for you",
                  size: 35,
                ),

                // Search Bar

                SizedBox(
                  height: 20,
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        // Icon
                        Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),

                        // Form

                        SizedBox(
                          width: 20,
                        ),

                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Find your Cofee...",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.4))),
                        ))

                        // here i am stucking
                      ],
                    ),
                  ),
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                ), //

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Center(
                            child: BoldText(
                              text: "Cappuccino",
                              size: 15,
                              color: index == 0
                                  ? Colors.orange
                                  : Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          width: 100,
                        );
                      }),
                ),

                //
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 300,
                  width: double.maxFinite,
                  child: Expanded(
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Tile(),
                      SizedBox(
                        width: 10,
                      ),
                      Tile(),
                      SizedBox(
                        width: 10,
                      ),
                      Tile(),
                    ],
                  )),
                ),
                BoldText(text: "Special for you"),
                SizedBox(
                  height: 20,
                ),
                Tile()
              ],
            ),
          ),
        ),
      ),
    );
  }
  // h
}
