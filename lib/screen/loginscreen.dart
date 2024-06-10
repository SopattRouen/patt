import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterpage;
  const LoginScreen({super.key, required this.showRegisterpage});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  Future signIn() async {
    try {
      var userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passcontroller.text.trim(),
      );
      log("${userCredential}");
      Get.snackbar("Multi", "Sucess");
    } catch (e) {
      Get.snackbar("Multi", "Unsuccess");
      log("${e}");
    }
  }

  void dispose() {
    emailcontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 163, 177, 177),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome to Login",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Image(
                    image: AssetImage("images/home.png"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text("Password"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: MaterialButton(
                    shape: Border.all(style: BorderStyle.solid),
                    color: Color.fromARGB(255, 10, 18, 129),
                    onPressed: () {
                      setState(() {
                        signIn();
                      });
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Don't have an account yet?",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.showRegisterpage,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: SizedBox(
                        child: Image(
                          height: 30,
                          image: AssetImage("images/google.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      child: SizedBox(
                        child: Image(
                          height: 30,
                          image: AssetImage("images/facebook.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
