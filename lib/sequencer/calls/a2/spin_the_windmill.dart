/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class SpinTheWindmill extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/spin_the_windmill';

  SpinTheWindmill(super.name);

  @override
  void performCall(CallContext ctx) {
    var anycall = name.replaceFirst('the Windmill.*'.r,'').trim();
    var prefix = '';
    //  Get the center 4 dancers
    //  Note that if tidal it's not the same as the "centers"
    final centers = ctx.center(4);
    //  Step to a wave if facing couples
    final ctxCenters = CallContext.fromContext(ctx, dancers:centers);
    ctxCenters.analyze();
    final wave = name.startsWith('Left') ? 'Left-Hand Wave' : 'Wave';
    if (ctxCenters.dancers.every((d) => ctxCenters.isInCouple(d)))
      prefix = 'Step to a Compact $wave';
    //  Then Swing, Slip, Cast
    final centerPart = anycall.matches('(Left )?Spin'.r)
        ? 'Center 4 $prefix Trade Slip Cast Off 3/4'
        : 'Center 4 $anycall Cast Off 3/4';
    final outerPart = 'Outer 4 _Windmill '+name.replaceFirst('.*windmill'.ri,'');
    //  If there's an 'any' call, first try it with the center 4
    try {
      ctx.applyCalls('$outerPart while $centerPart');
    } on CallError catch (e) {
      //  If that failed, try the 'any' call with all 8 dancers
      try {
        ctx.applyCalls(anycall, '$outerPart While Centers Cast Off 3/4');
      } on CallError catch(_) {
        throw(e);
      }
    }
  }

}

class WindmillX extends Action {

  WindmillX(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Get the direction
    final dir = name.replaceFirst('.*windmill '.ri,'').split(' ')[0];
    //  Look for a circulate variation
    var amount = '2';
    if (name.contains('Circulate')) {
      var amountstr = name.replaceFirst('.*Circulate '.ri, '');
      amount = amountstr.norm.replaceAll('[a-z]'.ri, '');
      //  Check that the outer 4 are circulating
      var who = name.replaceFirst('.*windmill $dir'.ri,'')
          .replaceFirst('circulate.*'.ri,'').trim();
      if (who.norm != 'outside') {
        ctx.applySpecifier(who);
        if (ctx.actives.length != 4)
          throw CallError('Only the outsides can Circulate');
      }
    }
    //  Face that way and do the circulates
    if (dir != 'Forward')
      ctx.applyCalls('Face $dir');
    switch (amount) {
      case '1' : ctx.applyCalls('Circulate'); break;
      case '112' : ctx.applyCalls('Circulate','1/2 Circulate'); break;
      case '2' : ctx.applyCalls('Circulate','Circulate'); break;
      case '212' : ctx.applyCalls('Circulate','Circulate','1/2 Circulate'); break;
      case '3' : ctx.applyCalls('Circulate','Circulate','Circulate'); break;
      case '312' : ctx.applyCalls('Circulate','Circulate','Circulate','1/2 Circulate'); break;
      default : throw CallError('Circulate how much? ($amount)');
    }
  }

}