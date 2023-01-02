/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/


import 'package:flutter/material.dart' as fm;

import 'extensions.dart';

class Color extends fm.Color {

  const Color(int value) : super(value);
  const Color.fromARGB(int alpha, int red, int green, int blue) :
        super.fromARGB(alpha,red,green,blue);

  static Color fromName(String name) {
    switch (name.toLowerCase()) {
      case 'black' : return BLACK;
      case 'blue' : return BLUE;
      case 'cyan' : return CYAN;
      case 'gray' : return GRAY;
      case 'grey' : return GRAY;
      case 'green' : return GREEN;
      case 'magenta' : return MAGENTA;
      case 'orange' : return ORANGE;
      case 'red' : return RED;
      case 'white' : return WHITE;
      case 'yellow' : return YELLOW;
      default : return WHITE;
    }
  }

  static const Color BMS = Color(0xffc0c0ff);
  static const Color B1 = Color(0xffe0e0ff);
  static const Color B2 = Color(0xffe0e0ff);
  static const Color MS = Color(0xffe0e0ff);
  static const Color PLUS = Color(0xffc0ffc0);
  static const Color ADV = Color(0xffffe080);
  static const Color A1 = Color(0xfffff0c0);
  static const Color A2 = Color(0xfffff0c0);
  static const Color CHALLENGE = Color(0xffffc0c0);
  static const Color C1 = Color(0xffffe0e0);
  static const Color C2 = Color(0xffffe0e0);
  static const Color C3A = Color(0xffffe0e0);
  static const Color C3B = Color(0xffffe0e0);
  static const Color COMMON = Color(0xffc0ffc0);
  static const Color HARDER = Color(0xffffffc0);
  static const Color EXPERT = Color(0xffffc0c0);
  static const Color FLOOR = Color(0xfffff0e0);
  static const Color TICS = Color(0xff008000);
  static const Color LIGHTGREY = Color(0xffc0c0c0);
  static const Color TRANSPARENTGREY = Color(0x80808080);
  static const Color HIGHLIGHT = Color(0xffffff00);

  static const Color WHITE = Color(0xffffffff);
  static const Color BLACK = Color(0xff000000);
  static const Color RED = Color(0xffff0000);
  static const Color GREEN = Color(0xff00ff00);
  static const Color BLUE = Color(0xff0000ff);
  static const Color YELLOW = Color(0xffffff00);
  static const Color MAGENTA = Color(0xffff00ff);
  static const Color CYAN = Color(0xff00ffff);
  static const Color ORANGE = Color(0xffffc800);
  static const Color GRAY = Color(0xff808080);
  static const Color LIGHTGRAY = Color(0xffc0c0c0);
  static const Color MAROON = Color(0xff800000);

  Color invert() => Color.fromARGB(alpha,255-red,255-green,255-blue);
  Color darker([double f = 0.7]) =>
      Color.fromARGB(alpha, (red*f).i, (green*f).i, (blue*f).i);
  Color brighter([double f = 0.7]) => invert().darker().invert();
  Color veryBright() => brighter().brighter().brighter().brighter();
  Color vivid() => Color.fromARGB(alpha,
      red > 127 ? 255 : red,
      green > 127 ? 255 : green,
      blue > 127 ? 255 : blue);


}