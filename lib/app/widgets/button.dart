import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;

  Button({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: Text(
          "$btnText",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
