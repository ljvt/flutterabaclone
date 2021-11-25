import 'package:flutter/material.dart';
import 'package:flutter_aba_clone/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF005D86),
        //accentColor: const Color(0xFF024466),
        colorScheme: const ColorScheme.dark(),
      ),
      home: const HomePage(),
    );
  }
}
