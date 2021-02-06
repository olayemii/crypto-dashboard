import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FlutterIcons.menu_fea,
        ),
        centerTitle: true,
        title: Text("My Money"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                FlutterIcons.bell_fea,
              ),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
