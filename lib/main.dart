import 'dart:ui';

import 'package:agile_on/data/factory.dart';
import 'package:agile_on/ui/home/home_screen.dart';
import 'package:agile_on/ui/list/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'data/factory.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(PokerApp());
}

class PokerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: SafeArea(
          child: HomeScreen(
            tabs: <Widget>[
              ListScreen(repo: Factory.create(FactoryType.FIBONACCI)),
              ListScreen(repo: Factory.create(FactoryType.ACM)),
              ListScreen(repo: Factory.create(FactoryType.SEQUENTIAL)),
              ListScreen(repo: Factory.create(FactoryType.SIZE)),
            ],
          ),
        ));
  }
}
