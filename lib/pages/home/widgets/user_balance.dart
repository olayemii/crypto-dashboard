import 'package:flutter/material.dart';
import 'package:crypto_dashboard/utils/adaptive_height_extension.dart';

class UserBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Coins",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "Total amount \$378.15",
                style: themeData.textTheme.caption,
              ),
            ],
          ),
          SizedBox(height: 15.0),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 90.0.h,
                color: Color.fromRGBO(55, 66, 92, 0.4),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 15.0,
              );
            },
            itemCount: 2,
          )
        ],
      ),
    );
  }
}
