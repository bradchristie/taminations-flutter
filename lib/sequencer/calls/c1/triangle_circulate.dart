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

class TriangleCirculate extends Action {

  @override final level = LevelData.C1;
  TriangleCirculate(String name) : super(name);

  //  Calculate circulate path to next triangle dancer
  Path _oneCirculatePath(Dancer d, Dancer d2) {
    if (d2.isInFrontOf(d)) {
      //  Path is forward
      final dist = d.distanceTo(d2);
      return TamUtils.getMove('Forward',scale:[dist,1.0].v,beats: dist);
    }
    else if (d2.angleFacing.isAround(d.angleFacing+pi)) {
      //  Path is 180 degree turn to left or right
      final d2v = d.vectorToDancer(d2);
      return TamUtils.getMove('Run Left',
          scale:[0.5,d2v.y/2].v,
          skew:[d2v.x,0.0].v);
    }
    else {
      //  Path is 90 degree turn to left or right
      final d2v = d.vectorToDancer(d2);
      return TamUtils.getMove('Lead Left',
          scale:[d2v.x,d2v.y].v,
          beats:d2v.length);
    }
  }

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Find the 6 dancers to circulate
    final triangleType = name.replaceFirst('Triangle Circulate', '')
        .toLowerCase()
        .replaceAll('\\W'.r, '');
    final points = ctx.points();
    switch (triangleType) {
      case 'inside' :
        for (final d in ctx.outer(2))
          d.data.active = false;
        break;
      case 'outside' :
        for (final d in ctx.center(2))
          d.data.active = false;
        break;
      case 'inpoint' :
        for (final d in points) {
          if (d.data.leader)
            d.data.active = false;
        }
        break;
      case 'outpoint' :
        for (final d in points) {
          if (d.data.trailer)
            d.data.active = false;
        }
        break;
      case 'tandembased' :
        for (final d in ctx.dancers) {
          //  Dancer must either be in a tandem...
          if (!ctx.isInTandem(d)) {
            final tandems = ctx.dancers.where((d2) => ctx.isInTandem(d2));
            //  Find the dancer closest to each tandem
            //  We don't want dancers further out to get involved
            final closest = tandems.map((d2) => ctx.dancersInOrder(d2,(d3) => !ctx.isInTandem(d3)).firstOrNull).whereType<Dancer>().toSet();
            if (!closest.contains(d))
              d.data.active = false;
          }
        }
        break;
      case 'wavebased':
      case '':
        if (points.isNotEmpty) {
          for (final d in points) {
            final others = ctx.dancersInOrder(d);
            if (!(others[0].isLeftOf(others[1]) || others[0].isRightOf(others[1])) ||
                !(others[1].isLeftOf(others[0]) || others[1].isRightOf(others[0])))
              d.data.active = false;
          }
        } else {
          //  No points, maybe a sausage
          final sausage = CallContext.fromXML(TamUtils.getFormation('Sausage RH'));
          if (ctx.matchFormations(sausage,rotate:180) != null) {
            for (final d in ctx.center(2))
              d.data.active = false;
          }
        }
        break;
    }
    print(ctx.actives);
    if (ctx.actives.length != 6)
      throw CallError('Unable to find dancers to circulate');
    //  Should be able to split the square to 2 3-dancer triangles
    List<List<Dancer>> triangles;
    if (ctx.actives.none((d) => d.location.x.isAbout(0)))
      triangles = ctx.actives.partition((d) => d.location.x < 0);
    else if (ctx.actives.none((d) => d.location.y.isAbout(0)))
      triangles = ctx.actives.partition((d) => d.location.y < 0);
    else
      throw CallError('Unable to find Triangles');
    //  Figure out the circulates for each triangle
    for (final triangle in triangles) {
      for (final d in triangle) {
        final d2 =
        //  Scan ever-widening angles for other dancer
        //  of this triangle to circulate to
        triangle.where((dd) => dd.isInFrontOf(d)).firstOrNull ??
            triangle.where((dd) => dd != d
                && d.angleToDancer(dd).abs() < pi/2
                && !d.angleToDancer(dd).abs().isAround(pi/2)).firstOrNull ??
            triangle.where((dd) => dd != d
                && d.angleToDancer(dd).abs().isAround(pi/2)).firstOrNull ??
            triangle.where((dd) => dd != d
                && !d.angleToDancer(dd).abs().isAround(pi)).firstOrNull;
        if (d2 != null)
          d.path = _oneCirculatePath(d,d2);
        else
          throw CallError('Unable to calculate circulate path for $d');
      }
    }

  }

}