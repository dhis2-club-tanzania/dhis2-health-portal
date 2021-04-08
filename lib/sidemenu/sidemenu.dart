


import 'package:dhis2_health_portal/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// class SideBarMenu extends StatefulWidget {
//   final StringCallback callback;
//   @override
//   _SideBarMenuState createState() => _SideBarMenuState();
// }

class SideBarMenu extends StatelessWidget {
  SideBarMenu({Key key, this.callback}) : super(key: key);
  final StringCallback callback;

  void _getChangedTitle(title) {
    print("checking: " + title);
    callback(title);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
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
          title: Container(
            child: ListMenuItem(currentTitle: 'Home', onChanged: _getChangedTitle),
          ),
        ),
        ListTile(
          title: Container(
            child: ListMenuItem(currentTitle: 'Dashboards', onChanged: _getChangedTitle),
          ),
        ),
        ListTile(
          title: Container(
            child: ListMenuItem(currentTitle: 'Downloads', onChanged: _getChangedTitle),
          ),
        ),
      ],
    ),
    ),
    );
  }
}


typedef TitleCallback = void Function(String title);
typedef void StringCallback(String val);


class ListMenuItem extends StatelessWidget {

  ListMenuItem({Key key, this.currentTitle, this.onChanged}): super(key: key);

  final String currentTitle;
  final ValueChanged<String> onChanged;
  void _getChangedValue() {
    print("inside " + currentTitle);
    onChanged(currentTitle);
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _getChangedValue,
      child: Container(
        child: Text(currentTitle),
      ),
    );
  }
}

