/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import 'package:flutter/material.dart' as FM;
import 'color.dart';
import 'request.dart';

class Button extends FM.StatelessWidget {

  final String name;
  final FM.Widget child;
  final FM.VoidCallback onPressed;

  Button(this.name, { FM.Widget child, this.onPressed}) :
    this.child = child != null ? child :
    FM.Text(name, style: FM.TextStyle(
      fontWeight: FM.FontWeight.bold,
      fontSize: 20,
    ));

  @override
  FM.Widget build(FM.BuildContext context) =>
    FM.Padding(padding:FM.EdgeInsets.all( 4.0),
            child:FM.ElevatedButton(child:child,
                style: FM.ElevatedButton.styleFrom(
                  primary: Color.HIGHLIGHT,
                  onPrimary: FM.Colors.black,
                  shadowColor: FM.Colors.black,
                  elevation: 6.0,
                  side: FM.BorderSide(color:FM.Colors.grey, width: 1),
                ),
                onPressed: () {
                  if (onPressed != null) {
                    onPressed();
                  } else {
                    var request = Request(
                        action:Action.BUTTON_PRESS,
                        params:{"button":name}
                    );
                    RequestHandler.of(context).processRequest(request);
                  }
                }));

}
