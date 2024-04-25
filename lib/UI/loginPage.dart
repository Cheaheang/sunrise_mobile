import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: 210,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 190,
                    child: Image.asset(
                      'assets/images/loginImage.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 14,
                    right: 32,
                    child: Container(color: Colors.amber, child: Text('data')),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
