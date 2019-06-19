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
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: RaisedButton(
          onPressed: onPressed,
          color: poker.color,
          child: Center(
            child: Text(
              poker.score,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: "Rubik",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
