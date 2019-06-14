import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokerCard extends StatelessWidget {
  final Poker _poker;
  final GestureTapCallback _callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _callback,
      child:  Card(
        color: _poker.color,
        child:  Center(
          child:  Text(
            _poker.score,
            style:  TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  PokerCard.given(this._poker, this._callback);
}
