/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class CallError implements Exception {

  final String description;

  CallError(this.description);
  @override
  String toString() => description;

}

class CallNotFoundError extends  CallError {

  CallNotFoundError(String call) : super('Call $call not found');

}

class FormationNotFoundError extends CallError {

  FormationNotFoundError(String call)
      : super('No animation for $call from that formation.');

}