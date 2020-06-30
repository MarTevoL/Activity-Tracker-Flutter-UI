import 'package:flutter/material.dart';

class WeekDayCard extends StatelessWidget {
  const WeekDayCard({Key key, this.day}) : super(key: key);
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
        color: Colors.orange[500],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            day,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            'M',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
