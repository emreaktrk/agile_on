import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';

import 'repo.dart';

class SequentialRepo extends Repo {
  @override
  List<Poker> values() {
    return List<Poker>.generate(8, (index) {
      return Poker(index.toString(), getColor(index));
    });
  }

  Color getColor(int index) {
    int position = index % Colors.accents.length;
    return Colors.accents.elementAt(position).shade700;
  }

  @override
  Grid grid() {
    return Grid(2, 4);
  }
}
