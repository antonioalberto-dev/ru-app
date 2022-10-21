import 'package:app_ru/app/ru.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu RU',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: const Ru(),
      debugShowCheckedModeBanner: false,
    );
  }
}
