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

import '../../../moves.dart';
import '../common.dart';

class SquareThru extends Action {

  @override var help = 'In addition to the common use of Square Thru, the'
      ' program accepts these variatons:\n'
      'Square Thru (n) to a Wave\n'
      'Square Thru on the (nth) Hand (some call)';
  @override var helplink = 'b1/square_thru';
  SquareThru(String name) : super(name);

  @override
   void perform(CallContext ctx, [int i=0]) {
    //  Set up alternating hands
    var left = 'Left-Hand' ;
    var right = '' ;
    if (name.toLowerCase().startsWith('left' )) {
      left = '' ;
      right = 'Left-Hand' ;
    }
    //  Find out how many hands
    var norm = normalizeCall(name).toLowerCase();
    var extra = '';
    var onHand = norm.indexOf('on(2|3|4|5|6)'.r);
    if (onHand > 0) {
      extra = norm.substring(onHand+3);
      norm = norm.substring(0,onHand+3);
      if (extra.matches('(left)?touch14'.r))
        extra = 'Hinge';
    }
    var count = norm.replaceAll('toawave' , '')
        .trim()
        .last
        .toIntOrNull() ?? 4;
    if (norm.endsWith('on4'))
      count = 4;
    if (norm.endsWith('on3'))
      count = 3;
    if (norm.endsWith('on2'))
      count = 2;
    if (norm.endsWith('on5'))  //  really?
      count = 5;
    if (norm.endsWith('on6'))  //  now, honestly ...
      count = 6;
    //  First hand is step to a wave if not already there
    if (ctx.actives.any((d) => ctx.isInCouple(d))) {
      ctx.applyCalls('Facing Dancers Step to a Compact $right Wave' );
      ctx.analyze();
    }
    //  Check that wave is the correct hand
    if (ctx.actives.any((d) =>
        (!d.data.belle && left == '' ) ||
        (!d.data.beau && right == '' ) ||
        !ctx.isInWave(d)))
      throw CallError('Cannot $name from this formation' );
    //  Square thru remaining hands
    for (var c=1; c<count; c++) {
      var hand = (c % 2 == 0) ? right : left;
      ctx.applyCalls('Explode and Step to a Compact $hand Wave');
      ctx.level = LevelData.B1;  // override Explode (Plus)
    }
    //  Finish back-to-back unless C-1 concept 'to a Wave'  added
    if (norm.endsWith('toawave' ))
      level = LevelData.C1;
    else if (onHand <= 0)  //  on the nth hand ...
      ctx.applyCalls('Step Thru' );
    if (extra.isNotBlank)
      ctx.applyCalls(extra);
  }

}

class StepToACompactWave extends Action {

  StepToACompactWave(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d).throwIfNull(CallError('Cannot find dancer facing $d' ));
    var dist = d.distanceTo(d2);
    var move = (name.toLowerCase().contains('left' )) ? ExtendRight  : ExtendLeft;
    return move.scale(dist/2,0.5);
  }

}