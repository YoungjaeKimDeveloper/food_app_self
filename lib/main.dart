import 'package:flutter/material.dart';
import 'package:food/auth/login_or_register.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Theme 
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        Provider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context, listen: true).themeData,
      home: LoginOrRegister(),
    );
  }
}
