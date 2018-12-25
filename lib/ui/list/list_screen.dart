import 'package:agile_on/data/factory.dart';
import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:agile_on/ui/detail/detail_screen.dart';
import 'package:agile_on/widget/poker_card.dart';
import 'package:flutter/material.dart';

Repo _repo = Factory().create(FactoryType.ACM);
List<Poker> _cards = _repo.values();

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: new Padding(
          padding: const EdgeInsets.all(4.0),
          child: Flex(
            direction: Axis.vertical,
            children: List<Widget>.generate(_repo.grid().column, (row) {
              return Flexible(
                fit: FlexFit.tight,
                child: Flex(
                  direction: Axis.horizontal,
                  children: List<Widget>.generate(_repo.grid().row, (column) {
                    return Flexible(
                      fit: FlexFit.tight,
                      child: PokerCard.given(getCard(row, column), () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new DetailScreen(getCard(row, column))));
                      }),
                    );
                  }),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

Poker getCard(int row, int column) {
  return _cards[(row * 2) + column];
}
