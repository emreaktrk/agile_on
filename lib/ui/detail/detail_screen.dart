import 'package:agile_on/data/model/poker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class DetailScreen extends StatefulWidget {
  final Poker poker;

  DetailScreen({this.poker});

  @override
  State<StatefulWidget> createState() {
    return DetailState();
  }
}

class DetailState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.poker.color,
        elevation: 0.0,
      ),
      backgroundColor: widget.poker.color,
      body: SafeArea(
        child: Center(
          child: Text(
            widget.poker.score,
            style: TextStyle(
              color: Colors.white,
              fontSize: 180.0,
              fontFamily: "Rubik",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: widget.poker.color,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: widget.poker.color,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
