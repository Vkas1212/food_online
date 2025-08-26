import 'package:flutter/material.dart';

class SignupFocusController {
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  void dispose() {
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
  }
}
