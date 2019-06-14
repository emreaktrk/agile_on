import 'dart:ui';

import 'package:agile_on/ui/home/home_screen.dart';
import 'package:agile_on/ui/list/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    new SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(new PokerApp());
}

class PokerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        home: SafeArea(
          child: new HomeScreen(
            tabs: <Widget>[
              new ListScreen(),
              new ListScreen(),
            ],
          ),
        ));
  }
}
