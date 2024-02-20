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

class Run extends Action {

  @override var level = LevelData.B2;
  @override var helplink = 'b2/run';
  Run(String name) : super(name);

  //  Generate paths for one set of dancers
  //  d : dancer who is running
  //  d2 : dancer(s) that d is running around
  void _runOne(DancerModel d, List<DancerModel> dlist, String dir) {
    for (var i=0; i<dlist.length; i++) {
      var d2 = dlist[i];
      var dprev = i==0 ? d : dlist[i-1];
      var dist = dprev.distanceTo(d2).clamp(1.0, double.infinity);
      var m2 = Stand;
      if (d.isRightOf(d2)) m2 = DodgeRight;
      if (d.isLeftOf(d2)) m2 = DodgeLeft;
      if (d.isInFrontOf(d2)) m2 = Forward_2;
      if (d.isInBackOf(d2)) m2 = Back_2; //  really ???
      d2.path += m2.scale(dist / 2, dist / 2);
    }
    d.path += (dir=='Left' ? RunLeft : RunRight).scale(1.0,d.distanceTo(dlist.last)/2);
  }

  @override
  void performCall(CallContext ctx) {
    //  Accept Run around more than 1 dancer
    var runAround = 1;
    if (name.contains('Around \\d'.ri)) {
      var match = 'Around (\\d)'.ri.firstMatch(name)!;
      runAround = match[1]!.i;
    }
    //  All dancers that are running
    var dancersToRun = ctx.dancers.where((d) => d.isActive).toSet();
    //  All dancers that the runners could run around
    var dancersToWalk = ctx.dancers.where((d) => d.isNotActive).toSet();
    //  To figure out which direction to run (if not given)
    //  first look to see if only one is possible because there are no dancers
    //  on the other side.  Otherwise, run around partner.
    var usePartner = false;
    while (dancersToRun.isNotEmpty) {
      var foundRunner = false;
      var runnersRunned = <DancerModel>{};
      for (var d in dancersToRun) {
        var dleft = ctx.dancersToLeft(d).take(runAround).toList();
        if (dleft.length < runAround || dleft.any((dx) => dx.isActive))
          dleft = [];
        var dright = ctx.dancersToRight(d).take(runAround).toList();
        if (dright.length < runAround || dright.any((dx) => dx.isActive))
          dright = [];
        var isLeft = dleft.length == runAround && !name.contains('Run Right');
            name != 'Run Right' ;
        var isRight = dright.length == runAround && !name.contains('Run Left');
        if (!isLeft && !isRight)
          throw CallError('Dancer $d cannot $name' );
        else if (!isLeft ||
            (usePartner && runAround==1 && dright.firstOrNull == d.data.partner)) {
          //  Run Right
          _runOne(d, dright, 'Right' );
          runnersRunned.add(d);
          dancersToWalk.removeAll(dright);
          foundRunner = true;
          usePartner = false;
        }
        else if (!isRight ||
            (usePartner && runAround==1 && dleft.firstOrNull == d.data.partner)) {
          //  Run Left
          _runOne(d,dleft,'Left' );
          runnersRunned.add(d);
          dancersToWalk.removeAll(dleft);
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