import 'package:agile_on/data/factory.dart';
import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/ui/detail/detail_screen.dart';
import 'package:flutter/material.dart';

List<Poker> _cards = new Factory().create(FactoryType.SEQUENTIAL).values();

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Agile On'),
      ),
      body: new Flex(
        direction: Axis.vertical,
        children: new List<Widget>.generate(4, (row) {
          return new Flexible(
            fit: FlexFit.tight,
            child: new Flex(
              direction: Axis.horizontal,
              children: new List<Widget>.generate(2, (column) {
                return new Flexible(
                  fit: FlexFit.tight,
                  child: new PokerCard(row, column),
                );
              }),
            ),
          );
        }),
      ),
    );
  }
}

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

  PokerCard(int row, int column) {
    _poker = _cards[(row * 2) + column];
  }

  PokerCard.given(this._poker);
}
