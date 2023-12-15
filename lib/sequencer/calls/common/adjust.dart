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

class Adjust extends ActivesOnlyAction {

  @override var level = LevelData.NONE;
  @override var help = '''Adjust moves the dancers to a specific formation.
The dancers must be near the formation you want.
Formations you can use include
     Lines or Waves (same)
     Thar
     Squared Set
     Circle or Alamo (same)
     Boxes or Columns (same)
     1/4 or 3/4 Tag (same)
     Diamonds
     Tidal Wave or Tidal Line (same)
     Hourglass
     Galaxy
     Butterfly
     O
     Sausage (Column of 6 with lone dancers at each end)
     Outrigger (Tidal Wave after center 4 Hinge)
     ''';
  Adjust(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    var fname = name.replaceFirst('Adjust to( an?)? '.ri, '' );
    var formation = Formation(fname);
    var ctx2 = CallContext.fromFormation(formation);
    var isSubset = ctx2.dancers.length > ctx.dancers.length;
    var rotate = switch(formation.name) {
      'Blocks' || 'Outrigger' => 90,
      _ => 180
    };
    var mapping = ctx.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:rotate,handholds:false,subformation: isSubset, maxError : 3.0, delta: 0.3, maxAngle: 0.5)
        ?? thrower(CallError('Unable to match formation to $fname'));
    if (!ctx.adjustToFormationMatch(mapping!.match))
      throw CallError('No adjustment to $fname needed.');
    ctx.noSnap(recurse: false);
  }

}