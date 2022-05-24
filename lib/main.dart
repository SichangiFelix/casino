import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:casino/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.blue,
      ),

      home: Home(),
      // initialRoute: SignIn.id,
      // routes: {
      //   SignIn.id : (context)=>const SignIn(),
      //   Registration.id : (context) =>const Registration(),
      //   Payment.id : (context) =>const Payment(),
      // },
    );
  }
}
