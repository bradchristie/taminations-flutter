/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'common.dart';
import 'formations.g.dart';
import 'sequencer/call_error.dart';

class Formation {

  final String name;
  final bool asymmetric;
  final List<DancerModel> dancers;

  static final Map<RegExp,Formation> _formationMap = {
    '.*lines?'.ri : Formations.NormalLines,
    '.*waves?'.ri : Formations.OceanWavesRHBGGB,
    '.*thar'.ri : Formations.TharRHBoys,
    '.*square(d)?(set)?'.ri : Formations.SquaredSet,
    '.*boxes'.ri : Formations.EightChainThru,
    '.*columns?'.ri : Formations.EightChainThru,
    '.*(1|3)4tag'.ri : Formations.QuarterTag,
    '.*diamonds?'.ri : Formations.DiamondsRHGirlPoints,
    '.*tidal(wave|line)?'.ri : Formations.TidalLineRH,
    '.*hourglass'.ri : Formations.HourglassRHBP,
    '.*galaxy'.ri : Formations.GalaxyRHGP,
    '.*butterfly'.ri : Formations.ButterflyRH,
    '.* o'.ri : Formations.ORH,
    '.*circle'.ri : Formations.Circle,
    '.*alamo'.ri : Formations.AlamoWave,  // actually, same as Circle
    '.*blocks'.ri : Formations.Blocks,
    //  two couples
    '.*box'.ri : Formations.FacingCouples
  };

  Formation(this.name,this.dancers, {this.asymmetric=false});

  factory Formation.fromName(String name) {
    var fnorm = normalizeCall(name);
    Formation? formation;
    //  First try a specific match to any formation
    for (var r in Formations.formationIndex.keys) {
      if (fnorm == normalizeCall(r))
        return Formations.formationIndex[r]!;
    }
    for (var r in _formationMap.keys) {
      if (fnorm.matches(r))
        formation = _formationMap[r]!;
    }
    if (formation == null)
      throw CallError('Unable to find formation for $name');
    return formation;
  }

  Formation copy() {
    var dcopy = dancers.clone();
    return Formation(name,dcopy,asymmetric: asymmetric);
  }

}