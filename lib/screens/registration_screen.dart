import 'package:flutter/material.dart';
import 'package:casino/screens/sign_in_screen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  static const String id = 'Registration';

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool hasAccepted = false;
  final formKey = GlobalKey<FormState>();
  String fName = '', lName = '', email = '', password = '', rePassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C334F),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Registration',
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
        backgroundColor: Color(0xff2C334F),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'This field is required';
                            }
                          },
                          onSaved: (value){
                            fName = value!;
                          },
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
                            validator: (value){
                              if(value!.isEmpty){
                                return 'This field is required';
                              }
                            },
                            onSaved: (value){
                              lName = value!;
                            },
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
                          validator: (value){
                            if(value!.isEmpty){
                              return 'This field is required';
                            }else if(!value.contains('@') || !value.contains('.com')){
                              return 'Invalid email address';
                            }
                          },
                          onSaved: (value){
                            email = value!;
                          },
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
                            validator: (value){
                              if(value!.isEmpty){
                                return 'This field is required';
                              }
                              else if(value.length < 8){
                                return 'Password must be at least 8 characters';
                              }
                            },
                            onSaved: (value){
                              password = value!;
                            },
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
                          validator: (value){
                            if(value != password){ //posible problem with comparison
                              return 'Make sure the passwords match';
                            }
                            else if(value!.isEmpty){
                              return 'This field is required';
                            }
                          },
                          onSaved: (value){
                            rePassword = value!;
                          },
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
                  ),
                  Row(children: [
                    Checkbox(
                      value: hasAccepted,
                      onChanged: (newValue) {
                        //Logic for having accepted the terms and conditions
                      },
                    ),
                    const Text('I accept the'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Registration.id);
                      },
                      child: const Text('Terms & Conditions'),
                    )
                  ]),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    child: ElevatedButton(
                        onPressed: () {
                          final isValid  = formKey.currentState!.validate();
                          if(isValid){
                            formKey.currentState!.save();
                            //code to send data to db
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successfully registered')));
                            //Code to navigate to homescreen
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Confirm that you have entered correct details')));
                          }
                        },
                        child: const Text('Sign In Account'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 19.0,
                            ),
                            primary: Color(0xff4575C8),
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
                          const Image(
                            image: AssetImage('images/facebook.png'),
                            height: 40.0,
                            width: 40.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const Image(
                              image: AssetImage('images/google.png'),
                              height: 40.0,
                              width: 40.0,
                            ),
                          ),
                          const Image(
                            image: AssetImage('images/twitter.png'),
                            height: 40.0,
                            width: 40.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('If you have an account'),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignIn.id);
                            },
                            child: const Text('Sign IN'),
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
      ),
    );
  }
}
