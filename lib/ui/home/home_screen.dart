import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final void Function(int index) onTabChange;
  final List<Widget> tabs;

  HomeScreen({this.onTabChange, @required this.tabs});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: widget.tabs[_index],
        bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) => setState(() {
                index = _index;
                if (widget.onTabChange != null) {
                  widget.onTabChange(_index);
                }
              }),
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.credit_card),
              title: new Text("ACM"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.flip_to_front),
              title: new Text("Sequence"),
            ),
          ],
        ));
  }
}
