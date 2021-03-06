import 'package:casino/constants/colors.dart';
import 'package:casino/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:casino/screens/registration_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static const String id = 'SignIn';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Account',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: scaffoldColor,
      ),
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(top: 45,right: 20,left: 20),
            padding: const EdgeInsets.only(left: 30,right: 30,top: 50.0),
            height: 530.0,
            alignment: Alignment.center,
            //constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22.0)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Username or Email Address',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 2.0,),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 2.0,),
                            ),
                            obscureText: true,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: rememberMe, onChanged: (newValue){
                                      //Logic to remember the user
                                    },),
                                    const Text('Remember me'),
                                  ],
                                ),
                                const Text('Forgot Password?'),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      //After form validation and user authentication...
                      // Navigator.pushNamed(context, Payment.id);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                    },
                    child: const Text('Sign In Account'),
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 19.0,
                        ),
                        primary: blueShade,
                        shape: const StadiumBorder(),
                        fixedSize: const Size(300.0, 50.0)
                    )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Column(
                    children: [
                      const Text('or'),
                      Container(child: const Text('Social Media'),
                        margin: const EdgeInsets.symmetric(vertical: 14.0),
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
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('If you have no account'),
                    TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, Registration.id);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                      },
                      child: const Text('Sign Up'),
                    )
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