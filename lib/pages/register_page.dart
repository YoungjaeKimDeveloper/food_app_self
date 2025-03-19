import 'package:flutter/material.dart';
import 'package:food/components/custom_button.dart';
import 'package:food/components/custom_textfield.dart';
import 'package:food/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  void Function() togglePage;
  RegisterPage({super.key, required this.togglePage});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  // Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Login Function
  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  void toggleScreen() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          "W E L C O M E",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.house_outlined,
              size: 90,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Text(
              "Today House",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            // Email TextField
            CustomTextfield(
              textEditingController: emailController,
              hintText: "Email...",
              isObscure: false,
            ),
            SizedBox(height: 20),
            // Password TextField
            CustomTextfield(
              textEditingController: passwordController,
              hintText: "Password...",
              isObscure: true,
            ),
            SizedBox(height: 20),
            // Password TextField
            CustomTextfield(
              textEditingController: passwordController,
              hintText: "Password Confirm...",
              isObscure: true,
            ),
            SizedBox(height: 20),
            // Login Button
            CustomButton(text: "Sign up", onPresse: login),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you have account already?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.togglePage,
                  child: Text(
                    "Login in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
