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

import '../../../moves.dart';
import '../common.dart';

class LinearCycle extends Action
    with ActivesOnly, CallWithParts, IsLeft, IsToAWave {

  @override int numberOfParts = 3;
  @override var level = LevelData.PLUS;
  @override var help = '''Linear Cycle is a 3-part call::
  1.  Hinge
  2.  Leaders Fold and all Double Pass Thru
  3.  Peel in direction of Hinge''';
  @override var helplink = 'plus/linear_cycle';
  var saveBelles = <DancerModel>{};
  var otherDancers = <DancerModel>[];

  LinearCycle(super.name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('$left Hinge');
  }

  @override
  void performPart2(CallContext ctx) {
    //  but left DPT if hinge is left-handed
    for (var d in ctx.dancers) {
      if (d.data.belle)
        saveBelles.add(d);
    }

    if (isToAWave) {
      dancersToaWave = ctx.dancers.where((d) => d.data.trailer).toList();
      otherDancers = ctx.dancers - dancersToaWave;
      ctx.applyCalls('Extend');
      return;
    }

    var allBelles = saveBelles.length == ctx.dancers.length;
    var boxes = ctx.boxes();
    var isColumns = ctx.isColumns();
    if (boxes != null) {
      for (var box in boxes) {
        ctx.subContext(box, (ctx2) {
          ctx2.analyze();
          var leaders = ctx2.dancers.where((d) => d.data.leader).toList();
          ctx2.applyCalls('Leaders Fold');
          //  The forward amount here is tweaked to make sure
          //  the dancers end in offset tandems
          for (var d in ctx2.dancers) {
            if (isColumns)
              d.path += Forward_2.scale(leaders.contains(d) ? 1.5 : 1.25,1);
            else
              d.path += Forward_2;
          }
        });
      }
    } else {
      ctx.applyCalls('Leaders Fold');
      try {
        ctx.applyCalls((allBelles ? 'left ' : '') + 'Double Pass Thru');
      } on CallError {
        for (var d in ctx.dancers)
          d.path += Forward_4;
      }
    }
  }

  @override
  void performPart3(CallContext ctx) {
    //  Peel in direction of hinge
    if (saveBelles.length == ctx.dancers.length) {
      if (isToAWave)
        ctx.subContext(ctx.dancers - dancersToaWave,
                (ctx2) => ctx2.applyCalls('Face Left Twice'));
      else
        ctx.applyCalls('Peel Left');
    }
    else if (saveBelles.isEmpty) {
      if (isToAWave)
        ctx.subContext(ctx.dancers - dancersToaWave,
                (ctx2) => ctx2.applyCalls('Face Right Twice'));
      else
        ctx.applyCalls('Peel Right');
    }
    else {
      var belles = ctx.dancers.where((d) => saveBelles.contains(d));
      var beaus = ctx.dancers.where((d) => !(saveBelles.contains(d)));
      ctx.subContext(belles.toList(), (ctx2) {
        ctx2.applyCalls('Peel Left');
      });
      ctx.subContext(beaus.toList(), (ctx2) {
        ctx2.applyCalls('Peel Right');
      });
    }
  }


}