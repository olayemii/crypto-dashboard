import 'package:crypto_dashboard/models/coin.dart';
import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:crypto_dashboard/utils/adaptive_height_extension.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;
  CoinCard({this.coin});
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        height: 90.0.h,
        color: Color.fromRGBO(55, 66, 92, 0.4),
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          children: [
            Container(
              width: 40.0.w,
              child: Image.asset(
                coin.getImagePath(),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          color: kDangerColor,
          icon: FlutterIcons.x_fea,
          foregroundColor: Colors.white,
          onTap: () => null,
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          color: kSuccessColor,
          icon: FlutterIcons.plus_fea,
          foregroundColor: Colors.white,
          onTap: () => null,
        ),
      ],
    );
  }
}

String getCoinProgress(Coin coin) {
  String returnValue = "";

  if (coin.trend == Trend.UP) {
    returnValue += "+";
  } else {
    returnValue += "-";
  }

  returnValue += "\$${coin.amountProgress} (${coin.percentProgress}%)";

  return returnValue;
}
