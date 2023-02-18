
import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.apps_rounded, title: 'General',),
            _SingleCard(color: Colors.amber, icon: Icons.bus_alert_rounded, title: 'Transport',)
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.pink, icon: Icons.shopify_rounded, title: 'Shopping',),
            _SingleCard(color: Colors.green, icon: Icons.gamepad_rounded, title: 'Games',)
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.movie_filter_sharp, title: 'Entertainment',),
            _SingleCard(color: Colors.indigo, icon: Icons.dining_sharp, title: 'Meal',)
          ]
        ),
      ],
    ); 
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard({super.key, required this.icon, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(151, 240, 208, 0.7)
       );

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration:  boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size: 35, color: Colors.white,),
                ),
                const SizedBox(height: 10),
                Text(title, style: TextStyle(color: color, fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}