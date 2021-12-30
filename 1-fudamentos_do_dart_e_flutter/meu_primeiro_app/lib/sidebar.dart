import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desafio 01",
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        scaffoldBackgroundColor: Colors.purple,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purpleAccent,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
