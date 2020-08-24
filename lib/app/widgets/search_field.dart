import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 14.0),
          hintText: "Search any item",
          suffixIcon: Material(
            borderRadius: BorderRadius.circular(25.0),
              elevation: 3.5,
              child: Icon(
                Icons.search, color: Colors.black,
              )
          ),
          border: InputBorder.none,

        ),
      ),
    );
  }
}
