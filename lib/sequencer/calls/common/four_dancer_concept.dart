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

import '../../../math/bezier.dart';
import '../common.dart';

//  This is a base class for concept calls that group or select
//  dancers in a way that they perform a 4-dancer call.
//  The concept maps the 4-dancer call to the real dancers.
//  Primary examples are As Couples Concept and Tandem Concept
abstract class FourDancerConcept extends ActivesOnlyAction {

  FourDancerConcept(String name) : super(name);

  var conceptName = '';

  String get realCall =>
      name.replaceFirst('$conceptName'.ri, '' )
          .replaceFirst('individually.*'.ri, '' ).trim();

  //  Return list of groups of dancers
  //  List must have 4 sub-lists
  //  Each sub-list has 2 or more real (or phantom) dancers
  //  For example, the groups for As Couples are the 4 couples
  List<List<Dancer>> dancerGroups(CallContext ctx);

  //  Return start position of concept dancer for one group
  Vector startPosition(List<Dancer> group);

  //  Compute location for a real dancer at a specific beat
  //  given location of the concept dancer
  Vector computeLocation(Dancer d, Movement m, int mi, double beat, int groupIndex);

  //  Any analysis or processing after call is applied to concept dancers
  //  but before application to real dancers
  void analyzeConceptResult(CallContext conceptctx, CallContext realctx) { }

  //  Make any changes to the final result (optional)
  void postAdjustment(CallContext ctx, Dancer cd, List<Dancer> group) { }

  @override
  void perform(CallContext ctx) {
    //  Get dancer groups
    var groups = dancerGroups(ctx);
    //  Create a concept dancer for each group dancer
    var singles = groups.map((group) {
      //  Select the gender for the concept dancer
      var g = Gender.NONE;
      if (group.every((it) => it.gender == Gender.BOY))
        g = Gender.BOY;
      if (group.every((it) => it.gender == Gender.GIRL))
        g = Gender.GIRL;
      //  Select the couple number for the concept dancer
      //  Needed for e.g. <concept> Heads Run
      var nc = '0' ;
      if (group.every((it) => it.numberCouple.matches('[13]{2}' .r)))
        nc = '1' ;
      if (group.every((it) => it.numberCouple.matches('[24]{2}' .r)))
        nc = '2' ;
      //  Create the concept dancer
      var dsingle = Dancer.cloneWithOptions(group.first, gender:g, numberCouple:nc);
      //  Set the location for the concept dancer
      var newpos = startPosition(group);
      dsingle.setStartPosition(newpos);
      return dsingle;
    }).toList();

    //  Create context for concept dancers
    var conceptctx = CallContext.fromDancers(singles);
    //  And apply the call
    if (realCall.isBlank)
      throw CallError('$conceptName what?');
    conceptctx.applyCalls(realCall);
    //conceptctx.matchStandardFormation();
    //  Hook for concept to see the result
    conceptctx.animate(0.0);
    analyzeConceptResult(conceptctx, ctx);



    //  Get the paths and apply to the original dancers
    for (var ci=0; ci<conceptctx.dancers.length; ci++) {
      var cd = conceptctx.dancers[ci];
      var group = groups[ci];
      //  Compute movement for each real dancer for each movement
      //  based on the concept dancer
      var cdbeat = 0.0;
      for (var i=0; i<cd.path.movelist.length; i++) {
        var m = cd.path.movelist[i];
        for (var gi=0; gi<group.length; gi++) {
          var d = group[gi];
          conceptctx.animate(cdbeat);
          //  Get the 4 points needed to compute Bezier curve
          var p1 = (i==0)
              ? (d.location - cd.location).rotate(-cd.angleFacing)
              : computeLocation(cd,m,i,0.0,gi);
          var p2 = computeLocation(cd,m,i,m.beats / 3.0,gi) - p1;
          var p3 = computeLocation(cd,m,i,m.beats * 2.0 / 3.0,gi) - p1;
          var p4 = computeLocation(cd,m,i,m.beats,gi) - p1;
          //  Now we can compute the Bezier
          var cb = Bezier.fromPoints(Vector(), p2, p3, p4);
          //  And use it to build the Movement
          var cm = Movement(m.beats,m.hands,cb, m.brotate, fromCall:m.fromCall);
          //  And add the Movement to the Path
          d.path.add(cm);
        }
        cdbeat += m.beats;
      }
    }

    //  Let inherited classes make any adjustments
    ctx.animateToEnd();
    conceptctx.dancers.forEachIndexed((ci, cd) {
      postAdjustment(ctx,cd,groups[ci]);
    });

  }


}