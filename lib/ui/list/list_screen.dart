import 'package:agile_on/data/factory.dart';
import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/widget/PokerCard.dart';
import 'package:flutter/material.dart';

List<Poker> _cards = new Factory().create(FactoryType.SEQUENTIAL).values();

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListState();
  }
}

class ListState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        elevation: 0.0,
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
                  child: new PokerCard.given(getCard(row, column)),
                );
              }),
            ),
          );
        }),
      ),
    );
  }
}

Poker getCard(int row, int column) {
  return _cards[(row * 2) + column];
}
