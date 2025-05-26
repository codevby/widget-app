import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.amber,
  Colors.yellow,
  Colors.blueGrey,
  Colors.grey,
  Colors.indigo,
  Colors.cyan,
  Colors.brown,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(
        selectedColor >= 0,
        'Selected color must be a valid index (greater than 0)',
      ),
      assert(
        selectedColor <= colorList.length,
        'Selected color must be a valid index (less than or equal than ${colorList.length - 1})',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false,
      // backgroundColor: colorList[selectedColor],
      // titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      // iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
