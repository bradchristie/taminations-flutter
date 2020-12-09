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

import 'dart:math';

import 'color.dart';
import 'dancer.dart';
import 'geometry.dart';
import 'math/matrix.dart';
import 'math/movement.dart';
import 'math/vector.dart';

class PracticeDancer extends Dancer {
  PracticeDancer(String number, String numberCouple, int gender, Color fillColor, Matrix mat, Geometry geom, List<Movement> moves) : super(number, numberCouple, gender, fillColor, mat, geom, moves) {
    _onTrackColor = fillColor;
  }

  static const ANGLESENSITIVITY = 0.5;
  static const MOVESENSITIVITY = 1.0;
  static const DIRECTIONALPHA = 0.9;
  static const DIRECTIONTHRESHOLD = 0.002;
  static const NOPOINT = Vector();
  static const NODIRECTION = Vector();

  bool practiceMousePressed = true;

  var onTrack = true;

  //  For moving dancer with mouse and keys
  final _shiftDown = false;
  final _ctlDown = false;
  var _primaryDirection = NODIRECTION;

  //  For moving dancer with fingers
  var _primaryid = -1;
  var _secondaryid = -1;
  var _primaryTouch = NOPOINT;
  var _primaryMove = NOPOINT;
  var _secondaryTouch = NOPOINT;
  var _secondaryMove = NOPOINT;
  final _primaryIsLeft = true ; //Setting("PrimaryControl").s == "Left"

  //  Need a val for original fill color, as we change it
  Color _onTrackColor;
  @override
  Color get drawColor => _onTrackColor.darker();

  Matrix computeMatrix(double beat) {
    final savetx = tx.copy();
    super.animate(beat);
    final computetx = tx.copy();
    tx = savetx;
    return computetx;
  }

  @override
  void animate(double beat) {
    fillColor = (beat <= 0 || onTrack)
        ? _onTrackColor.veryBright()
        : Color.GRAY;
    if (beat <= -1.0) {
      tx = starttx;
      _primaryTouch = Vector();
      _primaryMove = Vector();
    } else {

      //  Process primary move, which generally moves the dancer
      if (_primaryMove != NOPOINT) {
        final d = (_primaryMove - _primaryTouch) * MOVESENSITIVITY;
        if (!_ctlDown) {
          tx = Matrix.getTranslation(d.x, d.y) * tx;
          if (!_shiftDown && _secondaryMove == NOPOINT) {
            //  Rotation follow movement
            if (_primaryDirection == Vector())
              _primaryDirection = d;
            else {
              final dd = Vector(
                //  this smooths the rotation
                  DIRECTIONALPHA * _primaryDirection.x + (1 - DIRECTIONALPHA) * d.x,
                  DIRECTIONALPHA * _primaryDirection.y + (1 - DIRECTIONALPHA) * d.y);
              if (dd.length >= DIRECTIONTHRESHOLD) {
                var a1 = tx.angle;
                var a2 = atan2(dd.y, dd.x);
                tx = tx * Matrix.getRotation(a2 - a1);
                _primaryDirection = dd;
              }
            }
          }
        } else {
          //  Control key pressed - mouse controls rotation only
          final a = _primaryMove - tx.location;
          final z = a.crossZ(d);
          tx = tx * Matrix.getRotation(z* ANGLESENSITIVITY / a.length);
        }
        _primaryTouch = _primaryMove;
      }

      //  Process secondary move, which rotates the dancer
      if (_secondaryMove != NOPOINT) {
        //  Rotation follow right finger
        //  Get the vector of the user's finger
        final dx = -(_secondaryMove.x - _secondaryTouch.x) * ANGLESENSITIVITY;
        final dy = (_secondaryMove.y - _secondaryTouch.y) * ANGLESENSITIVITY;
        final vf = Vector(dx,dy);
        //  Get the vector the dancer is facing
        final vu = tx.direction;
        //  Amount of rotation is z of the cross product of the two
        final da = vu.crossZ(vf);
        tx = tx * Matrix.getRotation(da);
        _secondaryTouch = _secondaryMove;
      }

    }
  }

  void touchDown(int id, Vector pos, {bool isMouse}) {
    if (practiceMousePressed || !isMouse)
      _touchDownAction(id, pos, isMouse: isMouse);
    else
      _touchUpAction(id);
  }

  void _touchDownAction(int id, Vector pos, {bool isMouse}) {
    //  Figure out if touching left or right side, and remember the point
    //  Also need to remember the "id" to correlate future move events
    //  Point has already been transformed to dancer coords
    if ((pos.y < 0) ^ _primaryIsLeft || isMouse) {
      _primaryTouch = pos;
      _primaryMove = _primaryTouch;
      _primaryid = id;
    } else {
      _secondaryTouch = pos;
      _secondaryMove = _secondaryTouch;
      _secondaryid = id;
    }

  }

  void touchMove(int id, Vector pos) {
    if (id == _primaryid)
      _primaryMove = pos;
    else if (id == _secondaryid)
      _secondaryMove = pos;
  }

  void touchUp(int id, Vector pos, {bool isMouse}) {
    if (practiceMousePressed || !isMouse)
      _touchUpAction(id);
    else
      _touchDownAction(id, pos, isMouse: isMouse);
  }

  void _touchUpAction(int id) {
    if (id == _primaryid) {
      _primaryTouch = NOPOINT;
      _primaryMove = NOPOINT;
      _primaryid = -1;
    } else if (id == _secondaryid) {
      _secondaryTouch = NOPOINT;
      _secondaryMove = NOPOINT;
      _secondaryid = -1;
    }
  }


}