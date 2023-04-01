import 'package:connect/SampleDisplay.dart';
import 'package:flutter/material.dart';
import 'package:connect/constants.dart';

import '../Dashboard.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  Map<String, Object> loginmap = {};

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    String email ="" ;
    String password="" ;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(),
              ),
              Expanded(
                flex: 12,
                child: Center(child: Container(child: Image.asset("assets/logoConnect.png",height: 80,),),),
              ),
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 35),
                  child: TextField(
                    onChanged: (value) {
                      email = value ;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration:
                    kTextFieldDecoration.copyWith(
                        hintText: 'Enter your email'),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 35),
                  child: TextField(
                    onChanged: (value) {
                      password=value ;
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration:
                    kTextFieldDecoration.copyWith(
                        hintText: 'Enter your password'),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text(
                        "Click here",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: (){
                  print(email) ;
                  print(password) ;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MongoDBDisplay(),),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  height: 67,
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffF65821).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/left_dash.png"),
                    Text(
                      "Or Continue with",
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextColor.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset("assets/right_dash.png"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 115),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 67,
                        width: 69,
                        child: Center(
                          child: Image.asset("assets/google_icon.png"),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF65821).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          height: 67,
                          width: 69,
                          child: Center(
                            child: Image.asset("assets/apple_icon.png"),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffF65821).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
