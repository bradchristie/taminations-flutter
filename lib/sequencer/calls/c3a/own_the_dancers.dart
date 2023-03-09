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

import '../common.dart';

class OwnTheDancers extends Action {

  @override var level = LevelData.C3A;
  @override var helplink = 'c3a/own_the_anyone_anything_by_anything';
  OwnTheDancers(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  For now we will assume the specifier is just one word
    final match = 'Own the (\\w+) (.*) by (.*)'.ri.firstMatch(name);
    if (match == null || match.groupCount < 3)
      throw CallError('Unable to parse Own call');
    final specifier = match[1]!;
    final firstCall = match[2]!;
    final secondCall = match[3]!;
    try {
      ctx.applyCalls('$specifier $firstCall While Others $secondCall');
    } on CallError catch(_) {
      ctx.applyCalls('$specifier Do Your Part $firstCall'
          ' While Others Do Your Part $secondCall');
    }
  }

}