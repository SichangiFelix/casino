import 'package:casino/screens/payment_screen.dart';
import 'package:casino/screens/sign_in_screen.dart';
import 'package:casino/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      tabBuilder: (context, index){
        switch(index){
          case 0:
            return CupertinoTabView(builder: (context){
              return const CupertinoPageScaffold(child: Payment(),
                backgroundColor: Colors.deepPurple,
              );
            });
          case 1:
            return CupertinoTabView(builder: (context){
              return const CupertinoPageScaffold(child: SignIn(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context){
              return const CupertinoPageScaffold(child: Registration(),);
            });
          default:
            return CupertinoTabView(builder: (context){
              return const CupertinoPageScaffold(child: Payment(),);
            });
        }
      },
    );
  }
}
