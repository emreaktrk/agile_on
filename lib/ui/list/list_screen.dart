import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:agile_on/ui/detail/detail_screen.dart';
import 'package:agile_on/widget/poker_card.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  final Repo repo;

  ListScreen({this.repo}) : super(key: Key(repo.toString()));

  @override
  _ListScreenState createState() => _ListScreenState(repo);
}

class _ListScreenState extends State<ListScreen> {
  List<Poker> _cards;

  _ListScreenState(Repo repo) {
    _cards = repo.values();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Flex(
          direction: Axis.vertical,
          children: List<Widget>.generate(widget.repo.grid().column, (row) {
            return Flexible(
              fit: FlexFit.tight,
              child: Flex(
                direction: Axis.horizontal,
                children: List<Widget>.generate(widget.repo.grid().row, (column) {
                  return Flexible(
                    fit: FlexFit.tight,
                    child: PokerCard(
                      poker: _getCard(row, column),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(poker: _getCard(row, column)))),
                    ),
                  );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }

  Poker _getCard(int row, int column) {
    return _cards[(row * 2) + column];
  }
}
