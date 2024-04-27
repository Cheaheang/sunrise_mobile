import 'package:flutter/material.dart';
import 'package:sunrise_mobile/component/%20Text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool obscureText = true;
  bool checkData = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Container(
              height: 190,
              child: Image.asset(
                'assets/images/loginImage.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextWidget(
                            text: 'Log In',
                            bold: true,
                            size: 24,
                          ),
                          Card(
                            child: TextField(
                              style: TextStyle(
                                  color: checkData ? Colors.black : Colors.red),
                              controller: userController,
                              // onChanged: (value) {
                              //   () => loginInfo.getUserIdentify(value);
                              // },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: (checkData)
                                          ? Colors.black
                                          : Colors.red,
                                    )),
                                prefixIcon: Icon(Icons.account_circle_outlined),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  color:
                                      (checkData) ? Colors.black : Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: TextField(
                              //we use obscureText to hide input
                              obscureText: (obscureText) ? true : false,
                              // onChanged: (value) {
                              //   () => loginInfo.getPass(value);
                              // },
                              style: TextStyle(
                                  color: checkData ? Colors.black : Colors.red),
                              controller: passController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outlined),
                                border: InputBorder.none,
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color:
                                      (checkData) ? Colors.black : Colors.red,
                                ),

                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    icon: Icon((obscureText)
                                        ? Icons.visibility
                                        : Icons.visibility_off)),
                                //show Border when click
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      //change color accord to condition
                                      color: (checkData)
                                          ? Colors.black
                                          : Colors.red,
                                    )),
                              ),
                            ),
                          ),
                          (checkData)
                              ? Text(
                                  '',
                                  style: TextStyle(color: Colors.red),
                                )
                              : Text(
                                  'Invalid Username or Password. Please try again',
                                  style: TextStyle(color: Colors.red),
                                ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(text: 'Organized by:', bold: false),
                        Container(
                            width: 120,
                            height: 120,
                            child:
                                Image.asset('assets/images/sunriseLogo.jpg')),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
