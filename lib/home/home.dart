import 'package:flutter/material.dart';
import 'Appbar.dart';
import 'What_s_on_your_mind.dart';
import 'Div.dart';
import 'Story.dart';
import 'Post.dart';
import 'Wpost.dart';


class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return /*Scaffold(
      appBar: AppBar(
        title: Appbar(),
        backgroundColor: Colors.white,
        //هاب بتخفف الشادو اللي تحت بتصير زي كانها ضمن التطبيق
        elevation: 0.0,
        //TABBAR)
      ),*/
        ListView(
        children: [
          What_s_on_your_mind(),
          Div(),
          Story(),
          for (Post post in posts)
            Column(
              children: <Widget>[
                Div(),
                Wpost(post: post),
              ],
            ),
        ],
      );
  }
}
// // ======================== way2 hard for reaction ========================
// import 'home/reaction.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: FbReaction() ),);
//   }
// }

