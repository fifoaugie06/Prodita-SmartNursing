import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proditasmartnursing/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFF473E97)
    ));

    return MaterialApp(
      title: 'Prodita Smart Nursing',
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
