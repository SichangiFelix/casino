import 'package:casino/constants/colors.dart';
import 'package:casino/screens/payment_method_screen.dart';
import 'package:casino/screens/home.dart';
import 'package:casino/screens/sign_in.dart';
import 'package:casino/screens/choose_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  static const String id = 'Registration';

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool hasAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        title: const Text(
          'Registration',
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
        backgroundColor: scaffoldColor,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 18,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
            padding:
            const EdgeInsets.symmetric(horizontal: 30.0, vertical: 45.0),
            height: 680.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22.0)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.send),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: 'Password',
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Re-Password',
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Checkbox(
                    value: hasAccepted,
                    onChanged: (newValue) {
                      //Logic for having accepted the terms and conditions
                    },
                  ),
                  const Text('I accept the',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Registration.id);
                    },
                    child: const Text('Terms & Conditions',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  )
                ]),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));


                      },
                      child: const Text('Sign In Account'),
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 19.0,
                          ),
                          primary: Colors.indigo,
                          fixedSize: const Size(300.0, 52.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ))),
                ),
                Column(
                  children: [
                    const Text('or'),
                    Container(
                      child: const Text('Social Media'),
                      margin: const EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Facebook.svg',
                          width: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SvgPicture.asset(
                            'assets/icons/Google.svg',
                            width: 30,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/Twitter.svg',
                          width: 30,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('If you have an account'),
                        TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, SignIn.id);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

                          },
                          child: const Text('Sign In'),
                        )
                      ],
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