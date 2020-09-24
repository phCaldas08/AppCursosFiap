import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants.dart';

class PercentIndicator extends StatelessWidget {

  String _title;
  double _percent;

  PercentIndicator({@required String title, @required double percent}){
    this._title = title;
    this._percent = percent;

  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomLeft: Radius.circular(15),
      ),
      child: Container(
        color: Constants.secundaryColor,
        width: Constants.percentWidth(context, 40),
        height: Constants.percentHeight(context, 24),
        child: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  _title,
                  style:
                      TextStyle(fontSize: 18, color: Constants.fiapColor1),
                ),
              ),
              Expanded(
                child: CircularPercentIndicator(
                  radius: Constants.percentWidth(context, 23),
                  lineWidth: 5.0,
                  percent: _percent / 100,
                  center: new Text("${_percent}%"),
                  progressColor: Constants.fiapColor1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}