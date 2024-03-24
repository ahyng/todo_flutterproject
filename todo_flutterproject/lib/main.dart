import 'package:flutter/material.dart';
import 'package:todo_flutterproject/addPage.dart';
import 'package:todo_flutterproject/home.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const home(),
      '/add': (context) => const addList(),
    });
  }
}
