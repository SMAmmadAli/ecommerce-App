import 'package:ecomapp/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'my_electric.dart';
import 'my_fruites.dart';
import 'my_makeup.dart';
import 'my_shoes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<Widget> myTabs = const [
    MyTab(
      iconPath: '../assets/icon/shoes.png',
      TabName: "Shoes",
    ),
    MyTab(iconPath: '../assets/icon/electronic.png', TabName: "PC"),
    MyTab(iconPath: '../assets/icon/makeup.png', TabName: "MakeUp"),
    MyTab(iconPath: '../assets/icon/apple.png', TabName: "Fruite"),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 25,
                color: Colors.grey[800],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.grey[800],
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Just for",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800]),
                  ),
                ),
                const Text(
                  " YOU",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            //Tab bar
            TabBar(tabs: myTabs),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
                child: TabBarView(children: [
              myShoes(),
              myElectric(),
              myMakeUp(),
              myFruites(),
            ]))
          ],
        ),
      ),
    );
  }
}
