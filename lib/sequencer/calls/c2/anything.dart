/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    var norm = TamUtils.normalizeCall(name);
    var firstCall =
    norm.replaceMatch('(.*)(motivate|coordinate|percolate|perkup)'.ri,'\\1');
    final secondCall =
    norm.replaceMatch('(.*)(motivate|coordinate|percolate|perkup)'.ri,'\\2');
    //  If the first call is Counter Rotate or Split Counter Rotate
    //  the word Rotate is generally omitted
    if (firstCall.matches('(split)?counter'.ri))
      firstCall += 'rotate';
    //  If the first call is any type of Circulate
    //  the word Circulate is generally omitted
    else if (firstCall.matches('split|trade|splittrade|inroll|outroll|crossover|scatter'.ri))
      firstCall += 'circulate';
    await ctx.applyCalls(firstCall,'Finish $secondCall');
  }

}