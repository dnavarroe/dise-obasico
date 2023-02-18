

import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify transantion', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 20,color: Colors.white))
          ],
        ),
      ),
    );
  }
}