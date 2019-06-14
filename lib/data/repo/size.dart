import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/data/repo/repo.dart';
import 'package:flutter/material.dart';

class SizeRepo extends Repo {
  @override
  List<Poker> values() {
    return List<Poker>()
      ..add(
        Poker("S", Colors.green),
      )
      ..add(
        Poker("M", Colors.orange),
      )
      ..add(
        Poker("L", Colors.red),
      );
  }

  @override
  Grid grid() {
    return Grid(3, 1);
  }
}
