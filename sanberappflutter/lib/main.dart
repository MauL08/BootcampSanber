import 'package:flutter/material.dart';

import 'package:sanberappflutter/Quiz3/LoginScreen.dart';

/// import 'package:sanberappflutter/Quiz3/MainApp.dart';

/// import 'package:sanberappflutter/Tugas/Tugas15/Dashboard.dart';

/// import 'package:sanberappflutter/Tugas/Tugas14/GetDataApi.dart';
/// import 'Tugas/Tugas15/HomeScreen.dart';

/// import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
/// import 'package:sanberappflutter/Tugas/Tugas12/Telegram.dart';
/// import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';
/// import 'package:sanberappflutter/Tugas/Tugas14/GetDataApi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
