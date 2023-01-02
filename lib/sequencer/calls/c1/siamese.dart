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

import '../common.dart';

class Siamese extends FourDancerConcept {

  @override final level = LevelData.C1;
  @override final conceptName = 'Siamese';
  @override var helplink = 'c1/siamese_concept';
  late List<List<Dancer>> couples;
  late List<List<Dancer>> tandems;
  Siamese(String name) : super(name);

  @override
  List<List<Dancer>> dancerGroups(CallContext ctx) {
    //  First find couples
    couples = ctx.dancers.where((d) =>
        d.data.beau && (d.data.partner?.data.belle ?? false) &&
            (d.data.partner?.data.partner == d))
        .map((d) => [d,d.data.partner!]).toList();
    //  Remaining dancers are tandems
    tandems = ctx.dancers.where((d) {
      final d2 = ctx.dancerInBack(d);
      return d2 != null && ctx.dancersInBack(d).length % 2 == 1
          && couples.flatten().none((it) => it == d || it == d2);
      }).map((d) => [d,ctx.dancerInBack(d)!]).toList();
    //  Better be all the dancers
    if ((couples+tandems).flatten().length == ctx.dancers.length)
      return couples + tandems;
    else
      throw CallError('Unable to find all Siamese pairs');
  }

  @override
  Vector startPosition(List<Dancer> group) =>
      (group[0].location + group[1].location).scale(0.5, 0.5);

  @override
  Vector computeLocation(Dancer d, Movement m, int mi, double beat, int groupIndex) {
    final pos = m.translate(beat).location;
    final offset = 0.5;
    final isFirst = groupIndex == 0;
    final isCouple = couples.flatten().contains(d);
    final ang = m.rotate(beat).angle;
    var ang2 = pi;
    if (isCouple && isFirst) ang2 = pi/2;
    else if (isCouple) ang2 = -pi/2;
    else if (isFirst) ang2 = 0.0;
    final v = Vector(offset,0.0).rotate(ang).rotate(ang2);
    return pos + v;
  }

  @override
  void postAdjustment(CallContext ctx, Dancer cd, List<Dancer> group) {
    //  This covers most all the formations you get from tandem calls
    const tandemFormations = {
      'Normal Lines Compact': 1.0,
      'Normal Lines': 1.0,
      'Double Pass Thru': 1.0,
      'Quarter Tag' : 1.5,
    };
    ctx.matchFormationList(tandemFormations,maxOffset: 9.0);
  }

}