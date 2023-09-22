import 'package:flutter/material.dart';
import 'package:untitled1/services/auth_service.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
          child: Column(children: [
            Container(
              height: screenHeight * 0.35,
              width: screenWidth,
              color: Colors.blue[700],
              child: Icon(
                Icons.facebook_outlined,
                size: screenWidth * 0.2,
                color: Colors.white,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.03),
                child: const Text("Afrikaans * Francais * More...")),
            Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(hintText: "phone or email"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(hintText: "password"),
                    ),
                  GestureDetector(
                    child:Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      color: Colors.blue[700],
                      alignment: Alignment.center,
                      child: const Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ) ,
                      ),
                    onTap:() => Navigator.pushNamed(context, '/introScreen'),
                  ),
                    Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.03),
                        child: const Text(
                          "Forget password?",
                          style: TextStyle(color: Colors.blue),
                        )),
                     Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.03),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text(
                              "--------------------",
                              style: TextStyle(color: Colors.black),
                            ),
                             Text(
                              "  or  ",
                              style: TextStyle(color: Colors.black),
                            ),
                             Text(
                              "--------------------",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                    GestureDetector(
                      child:Container(
                       margin: const EdgeInsets.only(top: 20),
                       height: screenHeight * 0.06,
                       width: screenWidth,
                       color: Colors.green[700],
                       alignment: Alignment.center,
                       child: const Text(
                        "Create new Facebook account",
                         style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                      ),
                      onTap:() => Navigator.pushNamed(context, '/signUp'),
                    ),
                    GestureDetector(
                      child:Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: screenHeight * 0.06,
                        width: screenWidth,
                        color: Colors.orangeAccent,
                        alignment: Alignment.center,
                        child: const Text(
                          "Sign in with google",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                      ),
                        onTap: () {
                           AuthService().signInWithGoogle();
                        }

                    ),
                  ],
                )),
          ]),
        ));
  }
}