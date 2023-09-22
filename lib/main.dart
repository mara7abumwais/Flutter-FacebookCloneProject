import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'TabNavigation.dart';
import 'calls.dart';
import 'saved.dart';
import 'signUp.dart';
import 'Login.dart';
import 'myAnimation.dart';
import 'IntroScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: <String, WidgetBuilder>{
       '/': (BuildContext ctx) => MyAnimation(),
        '/signUp': (BuildContext ctx) =>signUp(),
        '/introScreen': (BuildContext ctx) => IntroScreen(),
        '/login':(BuildContext ctx)=>Login(),
        '/tabNavigation': (BuildContext ctx) =>TabNavigation(),
        '/saved':(BuildContext ctx) => Saved(),
        '/Calls':(BuildContext ctx) => Calls(),
      },
    );
  }
}
