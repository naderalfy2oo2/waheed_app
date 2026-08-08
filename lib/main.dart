import 'package:flutter/material.dart';

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

      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },

      home: HomeView(),
    );
  }
}
