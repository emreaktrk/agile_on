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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _poker.color,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
            child: Text(_poker.score,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 180.0,
                    fontWeight: FontWeight.bold))),
      ),
      backgroundColor: _poker.color,
    );
  }

  @override
  void initState() {
    super.initState();

    ScreenTheme.updateNavigationBarColor(
      _poker.color,
      platform: Platform.Android,
    );
  }

  @override
  void dispose() {
    super.dispose();

    ScreenTheme.updateNavigationBarColor(
      Colors.black,
      platform: Platform.Android,
    );
  }
}
