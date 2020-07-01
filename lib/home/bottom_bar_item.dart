import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    Key key,
    this.icon,
    this.color,
    this.iconSize = 32.0,
    this.isActive = false,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double iconSize;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: iconSize,
      color: color,
    );
  }
}
