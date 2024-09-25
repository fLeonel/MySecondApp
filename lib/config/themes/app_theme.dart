import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(1, 15, 2, 49);

List<Color> _colorsThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.green.shade300,
  Colors.blue.shade600,
  Colors.red.shade600,
];

class AppTheme {
  final int selecterColor;
  AppTheme({this.selecterColor = 0})
      : assert(selecterColor >= 0 && selecterColor <= _colorsThemes.length,
            'Colors must be 0 and ${_colorsThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorsThemes[selecterColor],
        brightness: Brightness.light);
  }
}
