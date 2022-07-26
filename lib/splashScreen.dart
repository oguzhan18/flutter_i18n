import 'package:flutter/material.dart';
import 'package:aren_language/AppLanguage.dart';
import 'package:aren_language/textContent.dart';

import 'Constants.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen(AppLanguage appLanguage);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Select  Language",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Constants.appLanguage.changeLanguage(Locale("en"));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => textContent()),
                  );
                },
                child: Text(
                  "English",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Constants.appLanguage.changeLanguage(Locale("ar"));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => textContent()),
                  );
                },
                child: Text(
                  "Arabic",
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
