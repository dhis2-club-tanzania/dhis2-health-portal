import 'dart:math';

import 'package:dhis2_health_portal/home/home.dart';
import 'package:dhis2_health_portal/shared/components/topTitle.dart';
import 'package:dhis2_health_portal/sidemenu/sidemenu.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(CoreAppEntry());
}

class CoreAppEntry extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        fontFamily: 'Georgia'
      ),
      home: LandingPage(),
    );
  }
}

// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: HomePage(),
//     );
//   }
// }

class LandingPage extends StatefulWidget {

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LandingPageContainer()
    );
  }
}

class LandingPageContainer extends StatefulWidget {
  @override
  _LandingPageContainer createState() => _LandingPageContainer();

  static _LandingPageContainer of(BuildContext context) => context.findAncestorStateOfType<_LandingPageContainer>();
}
class _LandingPageContainer extends State<LandingPageContainer> {
  String currentPageTitle = 'Home';
  String webTitle = 'TANZANIA NATIONAL HEALTH PORTAL';
  onTitleChange(String title) {
    print("Inside");
    setState(() {
      currentPageTitle = title;
    });
  }

  set string(String value) => setState(() => {
    currentPageTitle= value
  });

  @override
  Widget build(BuildContext context) {
    bool runningOnWeb;
    if (kIsWeb) {
      print("running on we");
      runningOnWeb = true;
    } else {
      print("running on mobile");
      runningOnWeb = false;
    }
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.lightBlue[800],
          title: Container(
              child: !runningOnWeb ? TopTitleBanner(appTitle: currentPageTitle, isWeb: false, subTitle: null):
              TopTitleBanner(appTitle: webTitle, isWeb: true, subTitle: 'Ministry of Health, Community Development, Gender, Elderly and Children')
          ),
          toolbarHeight: !runningOnWeb ? null: 130,
        ),
        body: Center(),
        drawer: !runningOnWeb ? Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                  height: 140.0,
                  child: Container(
                    child: DrawerHeader(
                      child: Text('Menu', style: TextStyle(color: Colors.white,
                          fontSize: 20)),
                      decoration: BoxDecoration(
                          color: Colors.blue
                      ),
                    ),
                  )
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
                title: Text('Routine Data Statistics'),
                onTap: () {
                  setState(() {
                    currentPageTitle = 'Routine Data Statistics';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Survey Data Statistics'),
                onTap: () {
                  setState(() {
                    currentPageTitle = 'Survey Data Statistics';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('HMIS Library'),
                onTap: () {
                  setState(() {
                    currentPageTitle = 'HMIS Library';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('News & Updates'),
                onTap: () {
                  setState(() {
                    currentPageTitle = 'News & Updates';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ): null
    );
  }
}


