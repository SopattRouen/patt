import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginpage;
  const RegisterScreen({super.key, required this.showLoginpage});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  Future signup() async {
    try {
      var userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passcontroller.text.trim(),
      );
      log("${userCredential}");
      Get.snackbar("Multi", "Register Success");
    } catch (e) {
      Get.snackbar("Multi", "Register unSuccess");
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
      backgroundColor: Color.fromARGB(255, 187, 179, 197),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign Up Account",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Image(
                    image: AssetImage("images/person.png"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(
                        "Email Or Username",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: passcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      signup();
                    });
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.showLoginpage,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
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
