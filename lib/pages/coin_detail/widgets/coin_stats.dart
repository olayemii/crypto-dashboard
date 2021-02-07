import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';

class CoinStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1 BTC / USD",
                style: themeData.textTheme.caption,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "\$3,432.92",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
              Text(
                "+0.15%",
                style: TextStyle(
                  color: kSuccessColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Volume 24h USD",
                style: themeData.textTheme.caption,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "\$1,360,647.312",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
              Text(
                "+16.80%",
                style: TextStyle(
                  color: kSuccessColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
