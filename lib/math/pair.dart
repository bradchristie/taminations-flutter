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

class Pair<A,B> {

  final A firstValue;
  final B secondValue;
  Pair(this.firstValue,this.secondValue);

  @override
  bool operator ==(Object other) {
    if (other is Pair<A,B>) {
      return other.firstValue == firstValue && other.secondValue == secondValue;
    }
    return false;
  }

  @override
  int get hashCode => firstValue.hashCode ^ secondValue.hashCode;

}