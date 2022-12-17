import 'package:ecomapp/utils/page_tile.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  List mylist = [
    // 'Text' 'price' 'Color' 'Image'
    ['Pink Shoes', '35', Colors.pink, '../assets/images/shoes/1.jpg'],
    ['Red Shoes', '25', Colors.red, '../assets/images/shoes/1.jpg'],
    ['Purple Shoes', '12', Colors.purple, '../assets/images/shoes/1.jpg'],
    ['Brown Shoes', '32', Colors.brown, '../assets/images/shoes/1.jpg'],
  ];
  MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: mylist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return PageTile(
              shoesText: mylist[index][0],
              price: mylist[index][1],
              ShoeColor: mylist[index][2],
              Image: mylist[index][3]);
        });
  }
}
