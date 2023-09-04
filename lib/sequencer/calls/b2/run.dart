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

class Run extends Action {

  @override var level = LevelData.B2;
  @override var helplink = 'b2/run';
  Run(String name) : super(name);

  void _runOne(DancerModel d, DancerModel d2, String dir) {
    var dist = d.distanceTo(d2).clamp(1.0, double.infinity);
    d.path += (dir=='Left' ? RunLeft : RunRight).scale(1.0,dist/2);
    var m2 = Stand;
    if (d.isRightOf(d2)) m2 = DodgeRight;
    if (d.isLeftOf(d2)) m2 = DodgeLeft;
    if (d.isInFrontOf(d2)) m2 = Forward_2;
    if (d.isInBackOf(d2)) m2 = Back_2;  //  really ???
    d2.path += m2.scale(dist/2,dist/2);
  }

  @override
  void perform(CallContext ctx) {
    var dancersToRun = ctx.dancers.where((d) => d.isActive).toSet();
    var dancersToWalk = ctx.dancers.where((d) => d.isNotActive).toSet();
    var usePartner = false;
    while (dancersToRun.isNotEmpty) {
      var foundRunner = false;
      var runnersRunned = <DancerModel>{};
      for (var d in dancersToRun) {
        var dleft = ctx.dancerToLeft(d);
        var dright = ctx.dancerToRight(d);
        var isLeft = dleft != null && dancersToWalk.contains(dleft) &&
            name != 'Run Right' ;
        var isRight = dright != null && dancersToWalk.contains(dright) &&
            name != 'Run Left' ;
        if (!isLeft && !isRight)
          throw CallError('Dancer $d cannot Run' );
        else if (!isLeft ||
            (usePartner && dright!=null && dright == d.data.partner)) {
          //  Run Right
          var d2 = dright.throwIfNull(CallError('Dancer $d unable to Run' ));
          _runOne(d, d2, 'Right' );
          runnersRunned.add(d);
          dancersToWalk.remove(d2);
          foundRunner = true;
          usePartner = false;
        }
        else if (!isRight ||
            (usePartner && dleft == d.data.partner)) {
          //  Run Left
          var d2 = dleft;
          _runOne(d,d2,'Left' );
          runnersRunned.add(d);
          dancersToWalk.remove(d2);
          foundRunner = true;
          usePartner = false;
        }
      }
      dancersToRun.removeAll(runnersRunned);
      if (!foundRunner) {
        if (!usePartner)
          usePartner = true;
        else
          throw CallError('Unable to calculate $name for this formation.' );
      }

    }
  }

}