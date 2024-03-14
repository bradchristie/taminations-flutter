/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import '../common.dart';

//  Replace the first circulate of Motivate, Coordinate, Percolate or Perk Up
//  with another call
class Anything extends Action {

  @override final level = LevelData.C2;
  Anything(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    var firstCall =
    name.replaceMatch('(.*)(motivate|coordinate|couple up|percolate|perk up).*'.ri,'\\1').trim();
    final secondCall =
    name.replaceMatch('(.*)(motivate|coordinate|couple up|percolate|perk up)'.ri,'\\2');
    //  If the first call is Counter Rotate or Split Counter Rotate
    //  the word Rotate is generally omitted
    if (firstCall.matches('.*(split |box )?counter'.ri))
      firstCall += ' Rotate';
    //  If the first call is any type of Circulate
    //  the word Circulate is generally omitted
    else if (firstCall.matches('split|box|trade|split trade|in ?roll|out ?roll|crossover|scatter'.ri))
      firstCall += ' circulate';
    //  Accept Stack Motivate e.g. for Stack the Line Motivate
    else if (firstCall.matches('stack'.ri))
      firstCall += 'theline';
    ctx.applyCalls(firstCall,'Finish $secondCall');
  }

}