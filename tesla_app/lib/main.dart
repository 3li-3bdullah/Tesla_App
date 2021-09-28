import 'package:flutter/material.dart';
import 'package:tesla_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesla App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}