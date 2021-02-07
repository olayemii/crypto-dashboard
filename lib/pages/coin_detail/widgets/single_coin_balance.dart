import 'package:flutter/material.dart';
import 'package:crypto_dashboard/utils/adaptive_height_extension.dart';

class SingleCoinBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0.h,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      color: Color.fromRGBO(55, 66, 92, 0.4),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
    );
  }
}
