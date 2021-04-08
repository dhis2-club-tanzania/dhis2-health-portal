import 'package:flutter/cupertino.dart';

// class TopTitleBanner extends StatefulWidget {
//   final String appTitle;
//
//  TopTitleBanner({Key key, this.appTitle}): super(key: key);
//
//   @override
//   _TopTitleBannerState createState() => _TopTitleBannerState();
// }
//
// class _TopTitleBannerState extends State<TopTitleBanner> {
//   final String appTitle;
//
//   _TopTitleBannerState({this.appTitle});
//   @override
//   Widget build(BuildContext context) {
//     print('appTitle' + appTitle);
//     return Container(
//       child: Text(appTitle),
//     );
//   }
// }

class TopTitleBanner extends StatelessWidget {
  final String appTitle;
  final String subTitle;
  final bool isWeb;


  TopTitleBanner({Key key, this.appTitle, this.isWeb, this.subTitle}): super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!isWeb) {
      return Container(
        child: Text(appTitle),
      );
    } else {
      return Container(
        child: ListBody(
          children: [
            Text(appTitle, style: TextStyle(fontSize: 25, letterSpacing: 2), textAlign: TextAlign.center),
            Text(subTitle,style: TextStyle(fontSize: 20, letterSpacing: 2), textAlign: TextAlign.center),
          ],
        ),
      );
    }

  }
}

