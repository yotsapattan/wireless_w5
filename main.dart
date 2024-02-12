import 'package:flutter/material.dart';

import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/page1.dart';
import 'package:my_app/pages/res1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

