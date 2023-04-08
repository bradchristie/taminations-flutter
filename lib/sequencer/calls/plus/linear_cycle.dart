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

class LinearCycle extends ActivesOnlyAction  with CallWithParts {

  @override int numberOfParts = 3;
  @override var level = LevelData.PLUS;
  @override var help = '''Linear Cycle is a 3-part call::
  1.  Hinge
  2.  Leaders Fold and all Double Pass Thru
  3.  Peel in direction of Hinge''';
  @override var helplink = 'plus/acey_deucey';
  var saveBelles = <DancerModel>{};
  LinearCycle(String name) : super(name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('Hinge');
  }

  @override
  void performPart2(CallContext ctx) {
    //  but left DPT if hinge is left-handed
    for (var d in ctx.dancers) {
      if (d.data.belle)
        saveBelles.add(d);
    }
    var isLeft = saveBelles.length == ctx.dancers.length;
    var boxes = ctx.boxes();
    if (boxes != null) {
      for (var box in boxes) {
        ctx.subContext(box, (ctx2) {
          ctx2.applyCalls('Leaders Fold');
          for (var d in ctx2.dancers)
            d.path += Forward_2;
        });
      }
    } else {
      ctx.applyCalls('Leaders Fold',(isLeft ? 'left ' : '') + 'Double Pass Thru');
    }
  }

  @override
  void performPart3(CallContext ctx) {
    //  Peel in direction of hinge
    if (saveBelles.length == ctx.dancers.length)
      ctx.applyCalls('Peel Left');
    else if (saveBelles.isEmpty)
      ctx.applyCalls('Peel Right');
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