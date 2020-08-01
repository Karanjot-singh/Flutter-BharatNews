import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Bharat",
              style: TextStyle(
                color: Colors.deepOrange,
              )),
          Text("News",
              style: TextStyle(
                color: Colors.green[700],
              ))
        ],
      )),
    );
  }
}
