/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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
  @override final conceptName = 'As Couples';
  AsCouples(String name) : super(name);

  @override
  List<List<Dancer>> dancerGroups(CallContext ctx) =>
      ctx.dancers.where((d) => d.data.beau)
      .map((d) {
        final d2 = d.data.partner.throwIfNull(CallError('No partner for $d'));
        if (!ctx.isInCouple(d,d2))
          throw CallError('$d and $d2 are not a Couple');
        return [d,d2];
      }).toList();

  @override
  Vector startPosition(List<Dancer> group) {
    final d = group.first;
    final d2 = group.second;
    if (d.location.length.isAbout(d2.location.length))
      return (d.location+d2.location).scale(0.5, 0.5);
    //  If couple is on axis, probably tidal formation
    //  put single dancer in between
    else if (d.isTidal && d2.isTidal)
      return (d.location + d2.location).scale(0.5, 0.5);
    //  Otherwise set to position of the two dancers nearest origin
    else if (d.location.length < d2.location.length)
      return d.location;
    else
      return d2.location;
  }


  @override
  Vector computeLocation(Dancer d, Movement m, int mi, double beat, int groupIndex) {
    //  Position individual dancers 0.5 units left and right of the concept dancer
    final pos = m.translate(beat).location;
    final offset = 0.5;
    final isBeau = groupIndex == 0;
    final ang = m.rotate(beat).angle;
    final v = Vector(offset,0.0).rotate(ang).rotate(isBeau ? pi/2.0 : -pi/2.0);
    return pos + v;
  }

  @override
  void postAdjustment(CallContext ctx, Dancer cd, List<Dancer> group) {
    group.first.path.addhands(Hands.GRIPRIGHT);
    group.second.path.addhands(Hands.GRIPLEFT);
  }

}