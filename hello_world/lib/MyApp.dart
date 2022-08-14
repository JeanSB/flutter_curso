import 'package:flutter/material.dart';
import 'package:hello_world/HomeController.dart';
import 'package:hello_world/HomePageColumnRow.dart';
import 'homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeController(child: HomePageColumnRow()));
  }
}
