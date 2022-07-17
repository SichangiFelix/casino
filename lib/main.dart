import 'package:casino/constants/colors.dart';
import 'package:casino/screens/payment_method_screen.dart';
import 'package:casino/screens/confirmation_screen.dart';
import 'package:casino/screens/sign_in.dart';
import 'package:casino/screens/splash_screen.dart';
import 'package:casino/screens/choose_number_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Casino',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: scaffoldColor,
      ),
      home: const SplashScreen(),
    );
  }
}

