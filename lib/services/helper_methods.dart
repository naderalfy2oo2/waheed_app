import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();

void goTo({required Widget page}) {
  navKey.currentState?.push(MaterialPageRoute(builder: (_) => page));
}

void showMsg(String msg, {bool isError = false}) {
  if (msg.isEmpty) return;
  final context = navKey.currentContext;

  if (context == null) {
    print('error: navKey.currentContext is null');
    return;
  }

  ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
    SnackBar(
      backgroundColor: isError ? Colors.red : Colors.green,
      content: Text(msg, style: TextStyle(color: Colors.white)),
      duration: Duration(seconds: 5),
    ),
  );
}
