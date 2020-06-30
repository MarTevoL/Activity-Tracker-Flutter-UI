import 'package:activity_tracker_ui/home/week_day_card.dart';
import 'package:flutter/material.dart';

class WeekDayCardContainer extends StatefulWidget {
  const WeekDayCardContainer({
    Key key,
  }) : super(key: key);

  @override
  _WeekDayCardContainerState createState() => _WeekDayCardContainerState();
}

class _WeekDayCardContainerState extends State<WeekDayCardContainer> {
  static const List<int> listCard = [1, 2, 3, 4, 5, 6, 7];

  int _cardActiveIndex = 0;

  void _updateCard(int index) {
    setState(() {
      _cardActiveIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20.0,
            ),
            for (var ind in listCard)
              WeekDayCard(
                day: '0${ind.toString()}',
                isActive: _cardActiveIndex == ind - 1 ? true : false,
                cardIndex: ind - 1,
                onTap: (index) {
                  _updateCard(index);
                },
              )
          ],
        ),
      ),
    );
  }
}
