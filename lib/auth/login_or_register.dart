import 'package:flutter/material.dart';
import 'package:food/pages/login_page.dart';
import 'package:food/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLoginPage = true;
  // Toggling Function
  togglePage() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  // build
  @override
  Widget build(BuildContext context) {
    if (isLoginPage) {
      return LoginPage(togglePage: togglePage);
    } else {
      return RegisterPage(togglePage: togglePage);
    }
  }
}
