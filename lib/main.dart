import 'package:flutter/material.dart';
import 'package:walletui/screen/card_screen.dart';
import 'package:walletui/screen/home_screen.dart';
import 'package:walletui/screen/splass_screen.dart';

import 'screen/dashboard_screen.dart';
import 'screen/graph_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',


      home: SplassScreen(),
    );
  }
}

