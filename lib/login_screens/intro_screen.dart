import 'package:connect/login_screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:connect/constants.dart';
class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Image.asset("assets/Background.png",
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Image.asset("assets/logoConnect.png",
                    height: 80,),
                    SizedBox(
                      height: 80,
                    ),
                    Image.asset("assets/intro_connect.jpg",height: 320,),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      """CONNECTing People\n     TOGETHER""",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: kTextColor.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignInScreen()),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 50,
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
                                color: Color(0xffF65821),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffF65821),
                                    offset:
                                    Offset(2, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
