import 'package:agile_on/data/model/poker.dart';

abstract class Repo implements Gridable {
  List<Poker> values();
}

abstract class Gridable {
  Grid grid();
}

class Grid {
  int row;
  int column;

  Grid(this.row, this.column);
}
