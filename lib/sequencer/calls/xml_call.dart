/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import 'package:xml/xml.dart';

import '../../dancer.dart';
import '../../tam_utils.dart';
import '../call_context.dart';
import 'call.dart';
import '../../extensions.dart';
import '../../math/path.dart';

class XMLCall extends Call {

  final XmlElement xelem;
  final List<int> xmlmap;
  final CallContext ctx2;

  XMLCall(this.xelem, this.xmlmap, this.ctx2)
      : super(xelem.getAttribute("title"));

  @override
  Future<void> performCall(CallContext ctx, [int i = 0]) async {
    var allPaths = xelem.childrenNamed("path").map(
            (element) => Path(TamUtils.translatePath(element))).toList();
    //  If moving just some of the dancers,
    //  see if we can keep them in the same shape
    if (ctx.actives.length < ctx.dancers.length) {
      //  No animations have been done on ctx2,
      //  so dancers are still at the start points
      var ctx3 = CallContext.fromContext(ctx2);
      //  So ctx3 is a copy of the start point
      //  Now add the paths
      for (var ii = 0; ii < ctx3.dancers.length; ii++) {
        ctx3.dancers[ii].path.add(allPaths[ii >> 1]);
      }
      //  And move it to the end point
      ctx3.extendPaths();
      ctx3.analyze();
    }

    var matchResult = ctx.computeFormationOffsets(ctx2, xmlmap, delta: 0.2);

    for (var i3 = 0; i3 < xmlmap.length; i3++) {
      var m = xmlmap[i3];
      var p = Path.fromPath(allPaths[m >> 1]);
      if (p.movelist.isEmpty)
        p.add(TamUtils.getMove("Stand"));
      //  Scale active dancers to fit the space they are in
      //  Compute difference between current formation and XML formation
      var vd = matchResult.offsets[i3].rotate(-ctx.actives[i3].tx.angle);
      //  Apply formation difference to first movement of XML path
      if (vd.length > 0.1)
        p.skewFirst(-vd.x, -vd.y);
      //  Add XML path to dancer
      ctx.actives[i3].path.add(p);
      //  Move dancer to end so any subsequent modifications (e.g. roll)
      //  use the new position
      ctx.actives[i3].animateToEnd();
    }

    //  Mark dancers that had no XML move as inactive
    //  Needed for post-call modifications e.g. spread
    var inactives = <Dancer>[];
    for (var i4 = 0; i4 < xmlmap.length; i4++) {
      var m = xmlmap[i4];
      if (allPaths[m >> 1].movelist.length == 0)
        inactives.add(ctx.actives[i4]);
    }
    inactives.forEach((d) {
      d.data.active = false;
    });
  }



}