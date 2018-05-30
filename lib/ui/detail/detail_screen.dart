import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Poker _poker;

  DetailScreen(this._poker);

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
}
