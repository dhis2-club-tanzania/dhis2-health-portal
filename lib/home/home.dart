import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageContainer()
    );
  }
}

class HomePageContainer extends StatefulWidget {
  @override
  _HomePageContainer createState() => _HomePageContainer();
}
class _HomePageContainer extends State {
  String currentPageTitle = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(currentPageTitle),
        ),
        body: Center(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Dashboard'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                setState(() {
                  currentPageTitle = 'Home';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                setState(() {
                  currentPageTitle = 'Dashboard';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Downloads'),
              onTap: () {
                setState(() {
                  currentPageTitle = 'Downloads';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}