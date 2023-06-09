import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:comoda/pages/signup.dart';
import 'package:text_divider/text_divider.dart';
import 'home.dart';

bool rememberMe = false;

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 68),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xff393939),
                  fontSize: 32,
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              FormBuilder(
                child: FormBuilderTextField(
                  name: "email",
                  decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    labelText: "Email",
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              FormBuilder(
                child: FormBuilderTextField(
                  name: "password",
                  //input as password
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline_rounded),
                    labelText: ("Password"),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        //check box toggle
                        value: rememberMe,
                        //if the box clicked, change the value
                        onChanged: (value) {
                          setState(
                            () {
                              if (rememberMe = value!) {
                                print("remember me checked");
                              } else {
                                print("remember me unchecked");
                              }
                            },
                          );
                        },
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("forgot password");
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color(0xff393939),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //create forgot password button
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  print("login biasa");
                  //taroh code authnya
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    //outline color of the button
                    border: Border.all(
                      width: 2,
                      color: Color(0xff297c8f),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff297c8f),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextDivider.horizontal(
                      text: const Text('OR'),
                      thickness: 3,
                      endIndent: 0,
                      color: Color.fromARGB(255, 147, 147, 147)),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              //create login with google button
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  print("login with google");

                  //taroh code authnya
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    //outline color of the button
                    border: Border.all(
                      width: 2,
                      color: Color(0xff297c8f),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In with Google",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 20,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontSize: 16,
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("sign up");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        color: Color(0xff297c8f),
                        fontSize: 16,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
