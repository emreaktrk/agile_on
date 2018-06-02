import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';
import 'package:screentheme/screentheme.dart';

Poker _poker;

class DetailScreen extends StatefulWidget {
  DetailScreen(Poker poker) {
    _poker = poker;
  }

  @override
  State<StatefulWidget> createState() {
    return new DetailState();
  }
}

class DetailState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _poker.color,
        elevation: 0.0,
      ),
      body: new Center(
          child: new Text(_poker.score,
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 320.0,
                  fontWeight: FontWeight.bold))),
      backgroundColor: _poker.color,
    );
  }

  @override
  void initState() {
    super.initState();

    ScreenTheme.updateNavigationBarColor(_poker.color, platform: Platform.Android);
  }

  @override
  void dispose() {
    super.dispose();

    ScreenTheme.updateNavigationBarColor(Colors.black, platform: Platform.Android);
  }
}
