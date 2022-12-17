import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String TabName;
  const MyTab({super.key, required this.iconPath, required this.TabName});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(iconPath),
          ),
          Expanded(
              child: Text(
            TabName,
            style:
                TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[600]),
          )),
        ],
      ),
    );
  }
}
