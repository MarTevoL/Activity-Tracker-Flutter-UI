import 'package:flutter/material.dart';

typedef CardActiveFuntion = void Function(int value);

class WeekDayCard extends StatelessWidget {
  const WeekDayCard(
      {Key key, this.day, this.isActive, this.onTap, this.cardIndex})
      : super(key: key);
  final String day;
  final bool isActive;
  final CardActiveFuntion onTap;
  final int cardIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(cardIndex);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
        padding: EdgeInsets.symmetric(vertical: 8.0),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
            color: isActive ? Colors.orange[500] : Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: isActive
                ? null
                : Border.all(
                    color: Colors.grey[300],
                    width: 2.0,
                  )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              day,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.white : Colors.black),
            ),
            Text(
              'M',
              style: TextStyle(
                  fontSize: 18.0,
                  color: isActive ? Colors.white : Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
