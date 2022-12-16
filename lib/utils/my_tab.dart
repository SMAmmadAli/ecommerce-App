import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(iconPath),
      ),
    );
  }
}
