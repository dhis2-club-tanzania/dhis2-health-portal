import 'package:dhis2_health_portal/shared/components/topTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

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
  String webTitle = 'TANZANIA NATIONAL HEALTH PORTAL';
  @override
  Widget build(BuildContext context) {
    
  }
}
