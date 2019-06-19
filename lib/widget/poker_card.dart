import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokerCard extends StatelessWidget {
  final Poker poker;
  final GestureTapCallback onPressed;

  PokerCard({this.poker, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RaisedButton(
        onPressed: onPressed,
        color: poker.color,
        child: Center(
          child: Text(
            poker.score,
            style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
