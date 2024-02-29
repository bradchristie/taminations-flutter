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

class Tandem extends FourDancerConcept {

  @override final level = LevelData.C1;
  @override final conceptName = 'Tandem';
  @override var helplink = 'c1/tandem_concept';

  Tandem(super.name);

  //  Build list of (leader, trailer) tandems
  @override
  List<List<DancerModel>> dancerGroups(CallContext ctx) =>
      ctx.dancers.where((d) => d.data.leader).map((d) {
        final d2 = ctx.dancerInBack(d).throwIfNull(CallError('No tandem for dancer $d'));
        if (!d2.data.trailer)
          throw CallError('Dancers $d and $d2 are not a Tandem');
        return [d,d2];
      }).toList();

  @override
  Vector startPosition(List<DancerModel> group) {
    final d = group[0];
    final d2 = group[1];
    if (d.location.length.isAbout(d2.location.length))
      //  If tandem is straddling an axis, put single dancer on axis
      return (d.location + d2.location).scale(0.5, 0.5);
    //  If tandem is on an axis (uncommon), probably tight column formation
    //  put single dancer in between
    else if (d.isOnAxis && d2.isOnAxis)
      return (d.location + d2.location).scale(0.5, 0.5);
    //  Otherwise set to position of the two dancers nearest origin
    else if (d.location.length < d2.location.length)
      return d.location;
    else
      return d2.location;
  }

  @override
  Vector computeLocation(DancerModel d, Movement m, int mi, double beat, int groupIndex) {
    //  Position tandem dancers 0.5 units in front and behind concept dancer
    final offset = 0.5;
    final isLeader = groupIndex == 0;
    final pos = m.translate(beat).location;
    final ang = m.rotate(beat).angle;
    final v = Vector(offset,0.0).rotate(ang).rotate(isLeader ? 0.0 : pi);
    return pos + v;
  }

  @override
  void postAdjustment(CallContext ctx, DancerModel cd, List<DancerModel> group) {
    //  This covers most all the formations you get from tandem calls
    var tandemFormations = {
      Formation('Normal Lines Compact'): 1.0,
      Formation('Normal Lines'): 1.0,
      Formation('Double Pass Thru'): 1.0,
      Formation('Quarter Tag') : 1.5,
    };
    ctx.matchFormationList(tandemFormations,maxOffset: 9.0);
  }

}