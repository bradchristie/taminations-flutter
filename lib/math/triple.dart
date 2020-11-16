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

class Triple<A,B,C> {

  final A firstValue;
  final B secondValue;
  final C thirdValue;
  Triple(this.firstValue,this.secondValue,this.thirdValue);

  @override
  bool operator ==(Object other) {
    if (other is Triple<A,B,C>) {
      return other.firstValue == firstValue &&
          other.secondValue == secondValue &&
          other.thirdValue == thirdValue;
    }
    return false;
  }

  @override
  int get hashCode =>
      firstValue.hashCode ^ secondValue.hashCode ^ thirdValue.hashCode;

}