import 'package:appdec15/Screens/mapScreen.dart';
import 'package:appdec15/Screens/venuDetailScreen.dart';
import 'package:flutter/material.dart';
// import 'Screens/venuDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VenuDetailScreen(),
    );
  }
}
