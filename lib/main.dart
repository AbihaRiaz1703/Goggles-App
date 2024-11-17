import 'package:flutter/material.dart';
import 'package:second_project/min.dart';
import 'package:second_project/nain.dart';
import 'package:second_project/o.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
    // return MaterialApp(initialRoute: Login.id, routes: {
    //   Name.id: (context) => Name(),
    //   Profile.id: (context) => Profile(),
    //
  }
}
