import 'package:app_cursos/constants.dart';
import 'package:app_cursos/screen/dashboard.dart';
import 'package:app_cursos/screen/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppCursos());
}

class AppCursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: ThemeData(
        hintColor: Constants.fontColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Constants.fontColor,
          ),
          bodyText2: TextStyle(
            color: Constants.fontColor,
          ),
        ),
      ),
      routes: {
        "/": (context) => Dashboard(),
        "/detail": (context) => Detail(),
      },
    );
  }
}
