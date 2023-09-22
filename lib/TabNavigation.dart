import 'package:flutter/material.dart';
import 'package:untitled1/watch.dart';
import 'home/home.dart';
import 'profile.dart';
import 'notifications.dart';
import 'menuPage.dart';
import 'watch.dart';

class TabNavigation extends StatelessWidget {
  @override
  String appBarName = 'facebook';
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarName),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 5.0,),
            Icon(Icons.settings),
            SizedBox(width: 5.0,),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            home(),
            Watch(),
            Profile(),
            const NotificationPage(),
            Menu(),
          ],
        ),
        bottomNavigationBar: const Material(
          //color: Theme.of(context).colorScheme.primary,
          child: TabBar(tabs:<Widget>[
            Tab(icon: Icon(Icons.home), child: Text('Home')),
            Tab(icon: Icon(Icons.ondemand_video), child: Text('Watch')),
            Tab(icon: Icon(Icons.account_circle_outlined), child: Text('Profile')),
            Tab(icon: Icon(Icons.notifications), child: Text('Notifications')),
            Tab(icon: Icon(Icons.menu), child: Text('Menu')),
          ]),
        ),
      ),
    );
  }
}
