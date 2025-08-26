import 'package:flutter/material.dart';
import 'package:food_online/service/widget_support.dart';
import 'package:food_online/controller/focus_node.dart';

class SignupPage extends StatefulWidget {
  final SignupFocusController controller;
  const SignupPage({super.key, required this.controller});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isUsernameFocused = false;
  bool _isPasswordFocused = false;

  @override
  void initState() {
    super.initState();
    widget.controller.usernameFocusNode.addListener(() {
      setState(() {
        _isUsernameFocused = widget.controller.usernameFocusNode.hasFocus;
      });
    });

    widget.controller.passwordFocusNode.addListener(() {
      setState(() {
        _isPasswordFocused = widget.controller.passwordFocusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                padding: EdgeInsets.only(top: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffffefbf),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "images/signup.png",
                      height: MediaQuery.of(context).size.height / 2.6,
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                    Container(
                      color: const Color(0xffffefbf),
                      child: Text(
                        "YOUR NEW GO TO RESTURANT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.0),
                        Center(
                          child: Text(
                            "SignUp",
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text("Name", style: AppWidget.priceTextFeildStyle()),
                        SizedBox(height: 5.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              focusNode: widget.controller.usernameFocusNode,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: _isUsernameFocused
                                    ? ''
                                    : 'Enter Username',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          "Passwoed",
                          style: AppWidget.priceTextFeildStyle(),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              focusNode: widget.controller.passwordFocusNode,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: _isPasswordFocused
                                    ? ''
                                    : 'Enter Passworsd',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
