import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practicdisen/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'basic_desing' : (_) => const BasicDesingScreen(),
        'scroll_desing':(_) => const ScrollDesingScreen(),
        'home':(_) => const HomeScreen(),

      },
    );
  }
}