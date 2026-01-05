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

import '../common.dart';

class AsCouples extends FourDancerConcept {

  @override final level = LevelData.A1;
  @override final conceptName = 'As Couples?';
  @override var help = 'Any call that can be done with 4 dancers'
      ' can be done As Couples.'
      ' At this time all the dancers must be As Couples,'
      ' for example you cannot say Boys As Couples (some call).';
  @override var helplink = 'a1/as_couples';

  AsCouples(String name) : super(name.replaceAll('As Couples?'.ri, 'As Couples'));

  @override
  List<List<DancerModel>> dancerGroups(CallContext ctx) {
    //  Check that all dancers are couples
    ctx.dancers.forEach((d) {
      if (!ctx.isInCouple(d))
        throw CallError('Dancer $d is not part of a Couple');
    });
    //  Now we know all the dancers are couples with one beau, one belle
    return ctx.dancers.where((d) => d.data.beau)
        .map((d) => [d, d.data.partner!]).toList();
  }

  @override
  Vector startPosition(List<DancerModel> group) {
    final d = group.first;
    final d2 = group.second;
    if (d.location.length.isAbout(d2.location.length))
      return (d.location+d2.location).scale(0.5, 0.5);
    //  If couple is on axis and tight, probably tidal formation
    //  put single dancer in between
    else if (d.isTidal && d2.isTidal && d.distanceTo(d2) < 1.5)
      return (d.location + d2.location).scale(0.5, 0.5);
    //  Otherwise set to position of the two dancers nearest origin
    else if (d.location.length < d2.location.length)
      return d.location;
    else
      return d2.location;
  }


  @override
  Vector computeLocation(DancerModel d, Movement m, int mi, double beat, int groupIndex) {
    //  Position individual dancers 0.5 units left and right of the concept dancer
    final pos = m.translate(beat).location;
    final offset = 0.5;
    final isBeau = groupIndex == 0;
    final ang = m.rotate(beat).angle;
    final v = Vector(offset,0.0).rotate(ang).rotate(isBeau ? pi/2.0 : -pi/2.0);
    return pos + v;
  }

  @override
  void postAdjustment(CallContext ctx, DancerModel cd, List<DancerModel> group) {
    final couplesSnapFormations = {
      Formation('Normal Lines Compact'): 1.0,
      Formation('Normal Lines'): 1.0,
      Formation('Double Pass Thru'): 1.0,
      Formation('Quarter Tag') : 1.5,
      Formation('Tidal Line RH') : 1.0,
    };
    group.first.path = group.first.path.addhands(Hands.GRIPRIGHT);
    group.second.path = group.second.path.addhands(Hands.GRIPLEFT);
    ctx.matchFormationList(couplesSnapFormations,maxOffset: 8.1);
  }

}