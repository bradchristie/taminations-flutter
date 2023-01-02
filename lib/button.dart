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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;

import 'color.dart';

class Button extends fm.StatelessWidget {

  final String name;
  final fm.Widget child;
  final fm.VoidCallback? onPressed;

  Button(this.name, {fm.Widget? child, this.onPressed}) :
    child = child ?? AutoSizeText(name, maxLines: 1, style: fm.TextStyle(
      fontWeight: fm.FontWeight.bold,
      fontSize: 20,
    )),
        super(key: fm.Key(name));

  @override
  fm.Widget build(fm.BuildContext context) =>
    fm.Padding(padding:fm.EdgeInsets.all(4.0),
        child:fm.Material(
            elevation: 4.0,
            color: Color(0),
            shadowColor: Color.BLACK,
            shape: fm.RoundedRectangleBorder(
                borderRadius: fm.BorderRadius.circular(10)),
          child:fm.InkWell(
              onTap: () {
                if (onPressed != null) {
                  onPressed!();
                }
              },
              child:fm.Container(
                  decoration: fm.ShapeDecoration(
                      shape: fm.RoundedRectangleBorder(
                          side: fm.BorderSide(color: Color.GRAY.darker()),
                          borderRadius: fm.BorderRadius.circular(10)
                      ),
                      gradient: fm.LinearGradient(
                          begin: fm.Alignment.topCenter,
                          end: fm.Alignment.bottomCenter,
                          colors: [Color(0xffffffff), Color(0xffa0a0a0)]
                      )
                  ),
                  padding: fm.EdgeInsets.all(6.0),
                  child: fm.Center(child: child)
              )
          )
        )
  );

}
