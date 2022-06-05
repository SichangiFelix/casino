import 'package:casino/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static const String id = 'Splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1200), () {});
    Navigator.pushReplacementNamed(context, SignIn.id);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text('Casino app',
          style: TextStyle(
            fontSize: 50.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
