import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            //بدونها اللي بعد بقربو كتير ع الكلمة
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('facebook',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Icon(Icons.search, color: Colors.black),
                SizedBox(width: 15.0),
                Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black)
              ]),
            ],
        );
  }
}