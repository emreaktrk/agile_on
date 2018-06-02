import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/ui/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokerCard extends StatelessWidget {
  Poker _poker;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new DetailScreen(_poker)));
      },
      child: new Card(
        color: _poker.color,
        child: new Center(
          child: new Text(
            _poker.score,
            style: new TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  PokerCard.given(this._poker);
}
