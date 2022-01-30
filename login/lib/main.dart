import 'package:flutter/material.dart';

import 'loginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    home: LoginPage(),
  ));
}


