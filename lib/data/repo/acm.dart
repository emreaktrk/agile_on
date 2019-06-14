import 'dart:ui';
import 'package:agile_on/data/model/poker.dart';
import 'package:agile_on/data/repo/repo.dart';

class AcmRepo extends Repo {
  @override
  List<Poker> values() {
    return List<Poker>()
      ..add(Poker("0", Color(0xFF4FC3F7)))
      ..add(Poker("1/2", Color(0xFF4CAF50)))
      ..add(Poker("1", Color(0xFF81C784)))
      ..add(Poker("2", Color(0xFFAED581)))
      ..add(Poker("3", Color(0xFFDCE775)))
      ..add(Poker("5", Color(0xFFFFEB3B)))
      ..add(Poker("8", Color(0xFFF9A825)))
      ..add(Poker("13", Color(0xFFFFA000)))
      ..add(Poker("21", Color(0xFFFF8F00)))
      ..add(Poker("34", Color(0xFFFF6F00)))
      ..add(Poker("50", Color(0xFFE65100)))
      ..add(Poker("80", Color(0xFFF4511E)))
      ..add(Poker("120", Color(0xFFD84315)))
      ..add(Poker("210", Color(0xFFBF360C)))
      ..add(Poker("500", Color(0xFF795548)))
      ..add(Poker("800", Color(0xFF4e342e)));
  }

  @override
  Grid grid() {
    return Grid(2, 8);
  }
}
