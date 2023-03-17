import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:text_divider/text_divider.dart';
import 'home.dart';
import 'signin.dart';

bool agreeTNC = false;

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                "Sign Up",
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
                      name: "username",
                      decoration: InputDecoration(
                        icon: Icon(Icons.person_outline),
                        labelText: "Username",
                      ))),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),

              FormBuilder(
                child: FormBuilderTextField(
                  name: "email",
                  decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    labelText: "Email",
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
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
                        value: agreeTNC,
                        //if the box clicked, change the value
                        onChanged: (value) {
                          setState(() {
                            agreeTNC = value!;
                            if (agreeTNC = value) {
                              print("agree with TNC");
                            } else {
                              print("TNC unchecked");
                            }
                          });
                        },
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Text(
                        "Agree to our terms of use and privacy\npolicies",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w400,
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
                  print("sign up with google");
                  //taroh code authnya
                },
                child: Container(
                  height: 56,
                  //make the width of the button max  of the screen
                  decoration: BoxDecoration(
                    //outline color of the button
                    border: Border.all(
                      color: Color(0xff297c8f),
                      width: 2,
                    ),
                    //add google icon beside the text
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up with Google",
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
                    "Already have an account?",
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontSize: 16,
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("sign in");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      " Login",
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
