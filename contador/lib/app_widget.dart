import 'package:contador/app_controler.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {
  final String title;

  // construtor da classe já que temos a variável title
  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light),
          title: title,
          home:
            HomePage(), // a classe chamada deve ser HomePage e não HomePageState
        );
      });
  }
}

/* O AnimatedBuilder é usado para 
ouvir as modificações do que foi colocado
como animation */
