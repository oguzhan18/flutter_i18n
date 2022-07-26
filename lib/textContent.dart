
import 'package:flutter/material.dart';

import 'app_localizations.dart';

class textContent extends StatefulWidget {
  @override
  _textContentState createState() => _textContentState();
}

class _textContentState extends State<textContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:  Center(
            child: Padding(padding: EdgeInsets.only(top:20),
                child: Row(
                  children: <Widget>[
                    Text( AppLocalizations.of(context).translate('LongMessage'),) ],
                )
            ),
          ),
        )
    ));
  }
}
