import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:flutter/material.dart';

class SizeRepo extends Repo {
  @override
  List<Poker> values() {
    return List<Poker>()
      ..add(
        Poker("Small", Colors.green),
      )
      ..add(
        Poker("Medium", Colors.orange),
      )
      ..add(
        Poker("Large", Colors.red),
      );
  }

  @override
  Grid grid() {
    return Grid(1, 3);
  }
}
