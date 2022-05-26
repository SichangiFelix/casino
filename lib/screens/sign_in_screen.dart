import 'package:flutter/material.dart';
import 'package:casino/screens/registration_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static const String id = 'SignIn';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool rememberMe = false;
  String user = "";
  String pass = "";
  final formKey = GlobalKey<FormState>();

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
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty || value!.length < 6 ){
                              return 'Your user must be at least 6 characters and can not be empty';
                            }
                          },
                          onSaved: (value){
                            user = value!;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Username or Email Address',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.grey.shade300,
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
                                  fillColor: Colors.grey.shade300,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 2.0,),
                                ),
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'This field is required';
                                  }else if(value.length < 8){
                                    return 'Your password has to be at least 8 characters';
                                  }
                                },
                                onSaved: (value){
                                  pass = value!;
                                },
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
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if(isValid){
                        formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successfully signed in')));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid credentials')));
                      }
                      //After form validation and user authentication...
                      //Navigator.pushNamed(context, Payment.id);
                    },
                    child: const Text('Sign In Account'),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 19.0,
                      ),
                      primary: Colors.deepPurple,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(300.0, 50.0),
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
                            const Image(image: AssetImage('images/facebook.png'),
                              height: 40.0,
                              width: 40.0,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: const Image(image: AssetImage('images/google.png'),
                                height: 40.0,
                                width: 40.0,
                              ),
                            ),
                          const Image(image: AssetImage('images/twitter.png'),
                            height: 40.0,
                            width: 40.0,
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
                          Navigator.pushNamed(context, Registration.id);
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
      ),
    );
  }
}
