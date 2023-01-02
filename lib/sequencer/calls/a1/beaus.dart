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


import '../common.dart';

class Beaus extends FilterActives {

  @override final level = LevelData.A1;
  @override var help = 'A Beau is a dancer with their partner to the right';
  @override var helplink = 'a1/belles_and_beaus';
  Beaus() : super('Beaus');

  @override
  bool isActive(Dancer d, CallContext ctx) => d.data.beau;

}