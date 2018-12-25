import 'package:agile_on/ui/list/list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new PokerApp());

class PokerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: new ListScreen(),
    );
  }
}
