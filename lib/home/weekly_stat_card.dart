import 'package:flutter/material.dart';

class WeeklyStatCard extends StatelessWidget {
  const WeeklyStatCard(
      {Key key, this.stat, this.icon, this.color, this.iconColor})
      : super(key: key);
  final int stat;
  final IconData icon;
  final Color color;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
      padding: EdgeInsets.all(12.0),
      height: 130.0,
      width: 130.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            stat.toString(),
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
                color: Colors.black),
          ),
          Text(
            'KCAL',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
