import 'package:flutter/material.dart';
import 'controller/focus_node.dart';
import 'package:food_online/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SignupFocusController _focusController = SignupFocusController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(controller: _focusController),
    );
  }
}
