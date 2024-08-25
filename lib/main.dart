import 'package:flutter/material.dart';
import 'package:basic_weather/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      home: HomePage(),
    );
  }
}
