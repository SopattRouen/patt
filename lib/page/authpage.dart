import 'package:flutter/material.dart';
import 'package:multiflex_store_01/screen/loginscreen.dart';
import 'package:multiflex_store_01/screen/registerscreen.dart';

class AutPage extends StatefulWidget {
  AutPage({super.key});
  @override
  State<AutPage> createState() => _AutPageState();
}

class _AutPageState extends State<AutPage> {
  bool showloginScreen = true;
  void toogleScreen() {
    setState(() {
      showloginScreen = !showloginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginScreen) {
      return LoginScreen(showRegisterpage: toogleScreen);
    } else {
      return RegisterScreen(showLoginpage: toogleScreen);
    }
  }
}
