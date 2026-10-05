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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/scheduler.dart';
import 'package:taminations/common_flutter.dart';

//  This class is used to
class BeatNotifier extends fm.ChangeNotifier {

  static const SLOWSPEED = 1500.0;
  static const MODERATESPEED = 1000.0;
  static const NORMALSPEED = 500.0;
  static const FASTSPEED = 200.0;
  static const LUDICROUSSPEED = 10.0;


  late Ticker _ticker;
  var _beat = 0.0;
  var _startBeat = 0.0;
  var _speed = 500.0;  // 'Normal' speed
  double get startBeat => _startBeat;
  var _endBeat = 0.0;
  double get endBeat => _endBeat;
  double get totalBeats => _endBeat - _startBeat;
  DateTime _lastTime = DateTime.now();
  bool get isRunning => _ticker.isTicking;
  var isFinished = false;

  BeatNotifier() {
    _ticker = Ticker((_) {
      final now = DateTime.now();
      final diff = now.difference(_lastTime).inMilliseconds;
      _beat += diff / _speed;
      if (_beat > _endBeat) {
        stop();
        isFinished = true;
      }
      _lastTime = now;
      notifyListeners();
    });
  }

  void setTimes(double start, double end) {
    _startBeat = start;
    _endBeat = end;
    _beat = _startBeat;
  }

  void setSpeed(double speed) {
    _speed = speed;
  }

  double get beat => _beat;
  set beat(double value) {
    _beat = min(max(value, _startBeat),_endBeat);
    notifyListeners();
  }

  void start() {
    if (!_ticker.isTicking) {
      if (_beat >= _endBeat)
        _beat = _startBeat;
      isFinished = false;
      _lastTime = DateTime.now();
      _ticker.start();
    }
  }

  void stop() {
    _ticker.stop();
  }

  //  not sure how much this is needed..
  void update() {
    if (!_ticker.isTicking)
      notifyListeners();
  }

  void reset() {
    stop();
    isFinished = false;
    _beat = _startBeat;
  }

}
