import 'package:flutter/material.dart';
import '_printer.dart';

String colored(Object? object, Color color) {
  return "\x1B[38;2;${color.red};${color.green};${color.blue}m$object\x1B[0m";
}

void print(Object? object, [MaterialColor? color]) {
  color == null ? printNormal(object) : printNormal(colored(object, color));
}

void building(Object? object) {
  print("Is building ${_colored(object, Colors.green)}!");
}


