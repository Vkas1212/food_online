import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_online/pages/signup_page.dart';
import 'controller/focus_node.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCFSsj0uU6bEfY-iRHXZd8YaoNAwC4i_-w",
        appId: "1:143689696683:web:4ae09c13ba3d024c04beee",
        messagingSenderId: "143689696683",
        projectId: "foodonline-b71a9",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SignupFocusController _focusController = SignupFocusController();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(controller: SignupFocusController()),
    );
  }
}
