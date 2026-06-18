import 'package:flutter/material.dart';
import 'package:waheed_app/home/pages/home.dart';
import 'package:waheed_app/splash.dart';

import 'view.dart';

void main() {
  runApp(const waheedApp());
}

class waheedApp extends StatelessWidget {
  const waheedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,

      home: Splash(),
    );
  }
}
