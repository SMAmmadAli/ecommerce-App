import 'package:flutter/material.dart';

import '../utils/shoetile.dart';

class myShoes extends StatelessWidget {
  myShoes({super.key});

  List mylist = [
    // 'Text' 'price' 'Color' 'Image'
    ['Pink Shoes', '35', Colors.pink, '../assets/images/shoes/1.jpg'],
    ['Red Shoes', '25', Colors.red, '../assets/images/shoes/1.jpg'],
    ['Purple Shoes', '12', Colors.purple, '../assets/images/shoes/1.jpg'],
    ['Brown Shoes', '32', Colors.brown, '../assets/images/shoes/1.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: mylist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return ShoesTile(
              shoesText: mylist[index][0],
              price: mylist[index][1],
              ShoeColor: mylist[index][2],
              Image: mylist[index][3]);
        });
  }
}
