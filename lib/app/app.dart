import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopmate/app/admin/pages/add_item.dart';

import 'pages/HomePage.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop Mate",
      theme: ThemeData(primaryColor: Colors.red[500]),
       home: MainScreen(),
//      home: AddItem(),
    );
  }
}
