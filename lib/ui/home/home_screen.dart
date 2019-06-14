import 'package:flutter/material.dart';

@immutable
class HomeScreen extends StatefulWidget {
  final void Function(int index) onTabChange;
  final List<Widget> tabs;

  HomeScreen({this.onTabChange, @required this.tabs});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.tabs[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) => setState(() {
                _index = index;
                if (widget.onTabChange != null) {
                  widget.onTabChange(_index);
                }
              }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              title: Text("ACM"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flip_to_front),
              title: Text("Sequence"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flip_to_front),
              title: Text("Size"),
            ),
          ],
        ));
  }
}
