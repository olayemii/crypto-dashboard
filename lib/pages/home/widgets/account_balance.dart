import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AccountBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Balance",
            style: themeData.textTheme.caption,
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$378.15",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(55, 66, 92, 0.78),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "+ Add Bank",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            children: [
              Text(
                "+2.14%",
                style: TextStyle(
                  color: kSuccessColor,
                  fontSize: 16.0,
                ),
              ),
              Icon(
                FlutterIcons.caret_up_faw,
                color: kSuccessColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
