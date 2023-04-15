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

import '../../../formations.dart';
import '../../../moves.dart';
import '../coded_call.dart';
import '../common.dart';

class SelectTriangle extends CodedCall {

  SelectTriangle(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    //  Find the 6 dancers
    final triangleType = name.replaceAll('Triangle','')
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
          if (d.isFacingOut)
            d.data.active = false;
        }
        break;
      case 'outpoint' :
        for (final d in points) {
          if (d.isFacingIn)
            d.data.active = false;
        }
        break;
      case 'tandembased' :
        final tandems = ctx.dancers.where((d2) => ctx.isInTandem(d2)).toList();
        //  Find the dancer closest to each tandem
        //  We don't want dancers further out to get involved
        final tandemPoints = <DancerModel>{};
        for (final d in tandems) {
          var d2 = ctx.tandemDancer(d)!;
          var d3 = ctx.dancers.where((dq) => !tandems.contains(dq) &&
              dq.distanceTo(d) < 3.0 && dq.distanceTo(d2) < 3.0).firstOrNull;
          if (d3 != null)
            tandemPoints.add(d3);
        }
        for (final d in ctx.dancers)
          if (!tandems.contains(d) && !tandemPoints.contains(d))
            d.data.active = false;
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
          final sausage = CallContext.fromFormation(Formations.SausageRH);
          if (ctx.matchFormations(sausage,rotate:180) != null) {
            for (final d in ctx.center(2))
              d.data.active = false;
          }
        }
        break;
    }

  }

}

class TriangleCirculate extends Action {

  @override final level = LevelData.C1;
  @override var help = '''Use one of these terms to identify the triangles:
  Inside
  Outside
  Inpoint
  Outpoint
  Tandem-based
  Wave-based
You do not need to use one of these if the triangles are unambiguous (as in a sausage formation)''';
  @override var helplink = 'c1/triangle_circulate';
  var rootName = 'Triangle Circulate'.r;
  TriangleCirculate(String name) : super(name);

  //  Calculate circulate path to next triangle dancer
  //  d2 is the spot where dancer d is to circulate
  //  d3 is the 3rd dancer of the triangle
  Path oneCirculatePath(DancerModel d, DancerModel d2, DancerModel d3) {
    if (d2.isInFrontOf(d)) {
      //  Path is forward
      final dist = d.distanceTo(d2);
      return Forward.scale(dist,1.0).changeBeats(dist);
    }
    else if (d2.angleFacing.isAround(d.angleFacing+pi)) {
      //  Path is 180 degree turn to left or right
      final d2v = d.vectorToDancer(d2);
      return RunLeft.scale(0.5,d2v.y/2).skew(d2v.x,0.0);
    }
    else {
      //  Path is 90 degree turn to left or right
      final d2v = d.vectorToDancer(d2);
      return LeadLeft.scale(d2v.x,d2v.y).changeBeats(d2v.length);
    }
  }

  @override
  void perform(CallContext ctx) {
    //  Find the 6 dancers to circulate
    final triangleType = name.replaceFirst(rootName, '')
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
          if (d.isFacingOut)
            d.data.active = false;
        }
        break;
      case 'outpoint' :
        for (final d in points) {
          if (d.isFacingIn)
            d.data.active = false;
        }
        break;
      case 'tandembased' :
        final tandems = ctx.dancers.where((d2) => ctx.isInTandem(d2)).toList();
        //  Find the dancer closest to each tandem
        //  We don't want dancers further out to get involved
        final tandemPoints = <DancerModel>{};
        for (final d in tandems) {
          var d2 = ctx.tandemDancer(d)!;
          var d3 = ctx.dancers.where((dq) => !tandems.contains(dq) &&
              dq.distanceTo(d) < 3.0 && dq.distanceTo(d2) < 3.0).firstOrNull;
          if (d3 != null)
            tandemPoints.add(d3);
        }
        for (final d in ctx.dancers)
          if (!tandems.contains(d) && !tandemPoints.contains(d))
            d.data.active = false;
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
          final sausage = CallContext.fromFormation(Formations.SausageRH);
          if (ctx.matchFormations(sausage,rotate:180) != null) {
            for (final d in ctx.center(2))
              d.data.active = false;
          }
        }
        break;
    }
    if (ctx.actives.length != 6) {
      if (triangleType.isBlank)
        throw CallError('You need to identify the triangle');
      else
        throw CallError('Unable to find dancers to circulate');
    }
    //  Should be able to split the square to 2 3-dancer triangles
    List<List<DancerModel>> triangles;
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
        if (d2 != null) {
          final d3 = triangle.firstWhere((dq) => dq != d && dq != d2);
          d.path = oneCirculatePath(d, d2, d3);
        }
        else
          throw CallError('Unable to calculate circulate path for $d');
      }
    }

  }

}