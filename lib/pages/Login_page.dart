// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginauth/components/googlerButton.dart';
import 'package:loginauth/components/myButton.dart';
import 'package:loginauth/components/mytextfeild.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uc = TextEditingController();

  final pc = TextEditingController();

  void userSignIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: uc.text, password: pc.text);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 93, 75),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Icon(
                Icons.ads_click_rounded,
                size: 100,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Hii! We missed you a lott :)",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFeild(
                controller: uc,
                hinttext: "UserName",
                obscuretext: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextFeild(
                controller: pc,
                hinttext: "Password",
                obscuretext: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: userSignIn,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'or continue with',
                    style: TextStyle(fontSize: 16),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoogleButton(imagePath: 'lib/images/G.png'),
                  SizedBox(
                    width: 20,
                  ),
                  GoogleButton(imagePath: 'lib/images/git.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('not a member?'),
                  Text(
                    'Register now',
                    style: TextStyle(color: Color.fromARGB(255, 24, 38, 49)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
