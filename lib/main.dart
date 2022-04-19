import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donasi Ponpes Ar-Rasyid',
      theme: ThemeData(),
      home: const MainScreen(),
      //DetailScreen(),
    );
  }
}
