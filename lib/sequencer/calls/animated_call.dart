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

import 'common.dart';

class AnimatedCall {

  String title;
  Formation formation;
  bool genderSpecific = false;
  bool isExact = false;
  bool isAsymmetric = false;
  String actives = '';
  LevelData level = LevelData.B1;
  String parts;

  AnimatedCall(this.title,Formation f,List<Path> paths,{this.parts=''})
      : formation = f.copy() {
    if (paths.length == formation.dancers.length) {
      for (var i = 0; i < formation.dancers.length; i++)
        formation.dancers[i].path = paths[i];
    } else if (paths.length * 2 == formation.dancers.length) {
      for (var i = 0; i < formation.dancers.length; i++)
        formation.dancers[i].path = paths[i ~/ 2];
    } else
      throw ArgumentError('Animated Call length mismatch: ${paths.length} ${formation.dancers.length}.');
  }

}