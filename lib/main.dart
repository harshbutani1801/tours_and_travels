import 'package:flutter/material.dart';
import 'package:tours_and_travels/Pages/home.dart';
import 'package:tours_and_travels/Widgets/themes.dart';

void main() {
  runApp(MyApp());
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
