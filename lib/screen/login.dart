//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:TaskScribe/lib/const/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final _focusNode1 = FocusNode();
  final _focusNode2 = FocusNode();

  final email = TextEditingController();
  final password = TextEditingController();

  Padding image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/imagem1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              image(),
              const SizedBox(height: 50),
              textfield_email(),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }

  Widget textfield_email(TextEditingController _controller, FocusNode _focusNode,
      String typeName, IconData iconss) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: email,
                  focusNode: _focusNode1,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: _focusNode1.hasFocus
                      ? custom_green
                      : Color(0xffc5c5c5),
                      ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                        BorderSide(color: Color(0xffc5c5c5),
                         width: 2.0
                         ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                        BorderSide(color: custom_green,
                        width: 2.0
                        ),
                    )
                  ),
                ),
              ),
            );
  }
}

  Widget image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: backgroundColors,
          image: DecorationImage(
            image: AssetImage('images/7.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

