import 'package:flutter/material.dart';
import 'package:food_online/pages/login_page.dart';
import 'controller/focus_node.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SignupFocusController _focusController = SignupFocusController();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
