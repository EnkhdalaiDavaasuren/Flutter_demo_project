import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  late final SharedPreferences prefs;
  static const _colorKey = 'color';
  static const _numberKey = 'number';

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Color getColor() {
    // TODO: get color
    final colorInt = prefs.getInt(_colorKey) ?? 0x0000000;
    final color = Color(colorInt);
    return color;
  }

  int getNumber() {
    return prefs.getInt(_numberKey) ?? 0;
  }

  Future<void> setColor(Color color) async {
    final ColorInt = color.toARGB32();
    await prefs.setInt(_colorKey, ColorInt);
  }

  Future<void> setNumber(int value) async {
    await prefs.setInt(_numberKey, value);
  }
}