import 'package:activity_tracker_ui/home/bottom_bar_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomCurvedNavigationBar extends StatefulWidget {
  @override
  _BottomCurvedNavigationBarState createState() =>
      _BottomCurvedNavigationBarState();
}

class _BottomCurvedNavigationBarState extends State<BottomCurvedNavigationBar> {
  int _activeBarItemIndex = 2;

  final List<IconData> _barIcons = [
    Icons.menu,
    Icons.favorite_border,
    Icons.add,
    Icons.star_border,
    Icons.person_outline
  ];

  List<BottomBarItem> _buildBarItems(int index) {
    return [
      for (int i = 0; i < _barIcons.length; i++)
        BottomBarItem(
          icon: _barIcons[i],
          isActive: i == index ? true : false,
          color: i == index ? Colors.white : Colors.grey[600],
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.grey[200],
      index: _activeBarItemIndex,
      color: Colors.white,
      buttonBackgroundColor: Colors.orange,
      items: _buildBarItems(_activeBarItemIndex),
      onTap: (ind) {
        setState(() {
          _activeBarItemIndex = ind;
        });
      },
    );
  }
}
