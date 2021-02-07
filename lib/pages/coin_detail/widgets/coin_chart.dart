import 'dart:math';

import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_candlesticks/flutter_candlesticks.dart';

class CoinChart extends StatefulWidget {
  @override
  _CoinChartState createState() => _CoinChartState();
}

class _CoinChartState extends State<CoinChart> {
  int activeIndex = 0;
  final List sampleData = List.generate(
    25,
    (index) {
      double open = Random().nextDouble() * 100.0;
      double low = Random().nextDouble() * 50.0;
      double close = Random().nextDouble() * 150.0;
      double volume = Random().nextDouble() * 5000.0;
      return {
        "open": open,
        "high": open * 2,
        "low": low,
        "close": close,
        "volumeto": volume,
      };
    },
  ).toList();

  final List<String> chartTimes = ["Today", "1W", "1M", "3M", "6M", "1Y"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: chartTimes.map((e) {
              int currentIndex = chartTimes.indexOf(e);
              return InkWell(
                onTap: () {
                  setState(() {
                    activeIndex = currentIndex;
                  });
                },
                child: Container(
                  color: currentIndex == activeIndex
                      ? Color.fromRGBO(55, 66, 92, 1)
                      : Colors.transparent,
                  padding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          height: 200.0,
          child: OHLCVGraph(
            data: sampleData,
            enableGridLines: true,
            volumeProp: (1 / sampleData.length),
            decreaseColor: kDangerColor,
            increaseColor: kSuccessColor,
          ),
        ),
      ],
    );
  }
}
