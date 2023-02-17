import 'package:flutter/material.dart';
import 'package:practicdisen/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_desing',
      routes: {
        'basic_desing' : (_) => const BasicDesingScreen(),
        'scroll_desing':(_) => const ScrollDesingScreen(),
      },
    );
  }
}