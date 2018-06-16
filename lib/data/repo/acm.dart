import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';

import 'repo.dart';

class AcmRepo extends Repo {
  @override
  List<Poker> values() {
    List<Poker> list = List();
    list.add(Poker("0", Color(0xFF4FC3F7)));
    list.add(Poker("1/2", Color(0xFF4CAF50)));
    list.add(Poker("1", Color(0xFF81C784)));
    list.add(Poker("2", Color(0xFFAED581)));
    list.add(Poker("3", Color(0xFFDCE775)));
    list.add(Poker("5", Color(0xFFFFEB3B)));
    list.add(Poker("8", Color(0xFFF9A825)));
    list.add(Poker("13", Color(0xFFFFA000)));
    list.add(Poker("21", Color(0xFFFF8F00)));
    list.add(Poker("34", Color(0xFFFF6F00)));
    list.add(Poker("50", Color(0xFFE65100)));
    list.add(Poker("80", Color(0xFFF4511E)));
    list.add(Poker("120", Color(0xFFD84315)));
    list.add(Poker("210", Color(0xFFBF360C)));
    list.add(Poker("500", Color(0xFF795548)));
    list.add(Poker("800", Color(0xFF4e342e)));
    return list;
  }

  @override
  Grid grid() {
    return Grid(2, 8);
  }
}
