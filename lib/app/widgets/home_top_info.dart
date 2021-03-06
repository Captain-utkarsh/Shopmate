import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What would ",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text("you like to shop ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
          ],
        ),
        Icon(
          Icons.notifications_none,
          size: 30,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
