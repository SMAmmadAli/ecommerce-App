import 'package:flutter/material.dart';

class ShoesTile extends StatelessWidget {
  final String shoesText;
  final String price;
  final ShoeColor;
  final String Image;
  const ShoesTile(
      {super.key,
      required this.shoesText,
      required this.price,
      required this.ShoeColor,
      required this.Image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: ShoeColor[50],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 12.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "\$$price",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: ShoeColor[200],
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            topRight: Radius.circular(12))),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // texts
            Text(
              shoesText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            //icon
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    // size: 30,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    // size: 30,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
