/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */


import 'package:xml/xml.dart';

import 'dancer_model.dart';
import 'extensions.dart';
import 'sequencer/normalize_call.dart';
import 'sequencer/call_error.dart';

class Formation {

  final String name;
  final bool asymmetric;
  final List<DancerModel> dancers;

  static final List<Formation> formations = [

    Formation('Facing Dancers', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:0,angle:0)
    ]),

    Formation('Facing Couples', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
    ]),

    Formation('Facing Couples Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
    ]),

    Formation('Facing Couples Close', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Facing Couples Far', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
    ]),

    Formation('Couples Facing Out', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
    ]),

    Formation('Couples Facing Out Compact', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:180),
    ]),

    Formation('Couples Facing Out Far', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
    ]),

    Formation('Couples Facing Out Close', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
    ]),

    Formation('Two-Faced Line RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Compact Two-Faced Line RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
    ]),

    Formation('Two-Faced Line LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
    ]),

    Formation('Compact Two-Faced Line LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
    ]),

    Formation('Box RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
    ]),

    Formation('Box RH Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
    ]),

    Formation('Box RH Close', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Box RH Boys Lead', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
    ]),

    Formation('Box LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
    ]),

    Formation('Box LH Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
    ]),

    Formation('Box LH Close', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Box LH Girls Lead', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
    ]),

    Formation('Wave RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Compact Wave RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:180),
    ]),

    Formation('Wave RH Boys Center', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
    ]),

    Formation('Wave LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Compact Wave LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-0.5,angle:180),
    ]),

    Formation('Wave LH Boys Center', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
    ]),

    Formation('Wave RH GBBG', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
    ]),

    Formation('Wave LH GBBG', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
    ]),

    Formation('Diamond RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
    ]),

    Formation('Diamond LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
    ]),

    Formation('Diamond LH Boys Center', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
    ]),

    Formation('Diamond Facing', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
    ]),

    Formation('Diamond Facing RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
    ]),

    Formation('Diamond Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
    ]),

    Formation('Single Double Pass Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:0),
    ]),

    Formation('Single Double Pass Thru Close', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-.5,y:0,angle:0),
    ]),

    Formation('Single Eight Chain Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:180),
    ]),

    Formation('Single Quarter Tag', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Single Left Quarter Tag', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Single 3/4 Tag', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Single Left 3/4 Tag', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Tandem Girls Lead', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:0),
    ]),

    Formation('Square RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
    ]),

    Formation('Square LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Square Facing Out LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
    ]),

    Formation('Square Facing Out RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Star RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Star LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Star Facing', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Block', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:2,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-2,angle:0),
    ]),



    //  4-couple formations
    Formation('Static Square', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
    ]),

    Formation('Squared Set', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
    ]),

    Formation('Static Facing Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
    ]),

    Formation('Static MiniWaves RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
    ]),

    Formation('Static MiniWaves LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
    ]),

    Formation('Static Facing', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:0,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:4,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:2,angle:90),
    ]),

    Formation('Static Girls Lead', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:0,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:4,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:2,angle:270),
    ]),

    Formation('Promenade', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1.414,y:1.414,angle:135),
      DancerModel.fromData(gender:Gender.GIRL,x:2.121,y:2.121,angle:135),
      DancerModel.fromData(gender:Gender.BOY,x:1.414,y:-1.414,angle:45),
      DancerModel.fromData(gender:Gender.GIRL,x:2.121,y:-2.121,angle:45),
    ]),

    Formation('Promenade 2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:2,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
    ]),

    Formation('Star Promenade', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
    ]),

    Formation('Reverse Star Promenade', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Stars RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
    ]),

    Formation('Stars LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
    ]),

    Formation('Normal Lines', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('Normal Lines Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-3,angle:0),
    ]),

    Formation('Lines Facing Out', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
    ]),

    Formation('Lines Facing Out Compact', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
    ]),

    Formation('Right-Hand Zs', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-4,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Left-Hand Zs', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-4,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Ocean Waves RH BGGB', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
    ]),

    Formation('Ocean Waves RH BGGB Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
    ]),

    Formation('Ocean Waves LH BGGB', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
    ]),

    Formation('Ocean Waves RH GBBG', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('Ocean Waves LH GBBG', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('Ocean Waves RH BGBG', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('Ocean Waves LH BGBG', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('Ocean Waves RH GBGB', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
    ]),

    Formation('Ocean Waves LH GBGB', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
    ]),

    Formation('Circle', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2.414,y:1,angle:-22.5),
      DancerModel.fromData(gender:Gender.GIRL,x:-2.414,y:-1,angle:22.5),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:2.414,angle:247.5),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2.414,angle:292.5),
    ]),

    Formation('Alamo Wave', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2.414,y:1,angle:-22.5),
      DancerModel.fromData(gender:Gender.GIRL,x:-2.414,y:-1,angle:202.5),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:2.414,angle:247.5),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2.414,angle:112.5),
    ]),

  Formation('Two-Faced Lines', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
    ]),

    Formation('Two-Faced Lines RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
    ]),

    Formation('Two-Faced Lines RH Compact', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
    ]),

    Formation('Two-Faced Lines LH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('Two-Faced Lines LH Compact', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-3,angle:0),
    ]),

    Formation('Thar LH Boys', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
    ]),

    Formation('Thar LH Girls', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
    ]),

    Formation('Thar RH Boys', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
    ]),

    Formation('Thar RH Girls', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
    ]),

    Formation('Diamonds RH Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
    ]),

    Formation('Diamonds LH Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
    ]),

    Formation('Diamonds Facing Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
    ]),

    Formation('Diamonds Facing LH Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
    ]),

    Formation('Diamonds RH PTP Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
    ]),

    Formation('Diamonds LH PTP Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
    ]),

    Formation('Diamonds Facing PTP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
    ]),

    Formation('Diamonds Facing LH PTP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
    ]),

    Formation('Diamonds 3 and 1 Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
    ]),

    Formation('Diamonds 3 and 1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
    ]),

    Formation('Interlocked Diamonds RH Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
    ]),

    Formation('Interlocked Diamonds LH Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
    ]),

    Formation('Interlocked Diamonds RH PTP Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
    ]),

    Formation('Interlocked Diamonds LH PTP Girl Points', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
    ]),

    Formation('Once Removed Diamonds Tandem Centers', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
    ]),

    Formation('Inverted Lines Ends Facing Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('Inverted Lines Ends Facing In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('3 and 1 lines #1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('3 and 1 lines #2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('3 and 1 lines #3', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('3 and 1 lines #4', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('3 and 1 lines #5', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('3 and 1 lines #6', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('3 and 1 lines #7', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
    ]),

    Formation('3 and 1 lines #8', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    ]),

    Formation('Concentric Diamonds RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:4,y:0,angle:270),
    ]),

    Formation('Concentric Diamonds Mixed', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:4,y:0,angle:270),
    ]),

    Formation('Quarter Tag', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('Quarter Tag LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('3/4 Tag', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('3/4 Tag LH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Quarter Lines RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
    ]),

    Formation('Quarter Lines LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
    ]),

    Formation('3/4 Lines RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
    ]),

    Formation('3/4 Lines LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
    ]),

    Formation('Mixed Quarter Tag #1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('Mixed Quarter Tag #2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Mixed Quarter Tag #3', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Mixed Quarter Tag #4', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('Mixed Quarter Tag #5', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('Mixed Quarter Tag #6', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Mixed Quarter Tag #7', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
    ]),

    Formation('Mixed Quarter Tag #8', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('Quarter Z RH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
    ]),

    Formation('Quarter Z LH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
    ]),

    Formation('Double Pass Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Completed Double Pass Thru', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
    ]),

    Formation('Eight Chain Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
    ]),

    Formation('Zero Box', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
    ]),

    Formation('Pass Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
    ]),

    Formation('Trade By', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
    ]),

    Formation('Column RH GBGB', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
    ]),

    Formation('Column LH GBGB', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
    ]),

    Formation('Magic Column RH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
    ]),

    Formation('Magic Column LH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
    ]),

    Formation('Mixed Columns RH Ends In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Mixed Columns LH Ends In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Mixed Columns RH Ends Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Mixed Columns LH Ends Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Mixed Columns RH Centers In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Mixed Columns LH Centers In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Mixed Columns RH Centers Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Mixed Columns LH Centers Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

   Formation('Two-Faced Tidal Line RH', dancers:[
     DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
     DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
     DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:180),
     DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:180),
   ]),

    Formation('Two-Faced Tidal Line LH', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
    ]),

    Formation('Tidal Line RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal Line LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
    ]),

    Formation('Tidal Wave RH BGGB', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal Wave RH GBBG', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal Wave RH BGBG', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal Wave LH BGGB', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:180),
    ]),

    Formation('Inverted Tidal Line RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:180),
    ]),

    Formation('Inverted Tidal Line LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
    ]),
    //  TODO merge these duplicate tidal inverted lines
    Formation('Tidal Inverted Line RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal Inverted Line LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal 3 and 1 Line #1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal 3 and 1 Line #2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal 3 and 1 Line #3', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal 3 and 1 Line #4', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal 3 and 1 Line #5', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
    ]),

    Formation('Tidal 3 and 1 Line #6', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal 3 and 1 Line #7', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('Tidal 3 and 1 Line #8', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
    ]),

    Formation('I-Beam', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
    ]),

    Formation('Misshapen I-Beam', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
    ]),

    Formation('X-Beam', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:.67,y:0,angle:0),
    ]),

    Formation('Misshapen X-Beam', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:0),
    ]),

    Formation('Outrigger', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:2.5,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:3.5,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
    ]),

    Formation('Hourglass RH BP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Hourglass RH GP', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
    ]),

    Formation('Hourglass LH BP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Hourglass Facing LH Box', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    ]),

    Formation('Hourglass Facing RH Box', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),

    Formation('Galaxy RH GP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
    ]),

    Formation('Galaxy LH GP', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
    ]),

    Formation('Galaxy Facing RH Box', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
    ]),

    Formation('Galaxy Facing LH Box', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
    ]),

    Formation('Blocks', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('Facing Blocks Right', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('Facing Blocks Left', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Galaxy 5', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
    ]),

    Formation('Galaxy 6', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
    ]),

    Formation('Galaxy 7', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
    ]),

    Formation('Galaxy 8', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
    ]),

    Formation('Blocks Facing Out', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
    ]),

    Formation('Blocks RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Butterfly RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('Butterfly LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Butterfly In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('Butterfly Out', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
    ]),

    Formation('Butterfly Chain Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
    ]),

    Formation('Butterfly Trade By', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('O RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
    ]),

    Formation('O LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('O In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('O Out', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
    ]),

    Formation('O Eight Chain Thru', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
    ]),

    Formation('O Trade By', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('Sausage RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
    ]),

    Formation('T-Bone DLDL', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
    ]),

    Formation('T-Bone DRDR', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
    ]),

    Formation('T-Bone URUR', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
    ]),

    Formation('T-Bone RDRD', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
    ]),

    Formation('T-Bone URRD', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
    ]),

    Formation('T-Bone URRU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone ULLD', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
    ]),

    Formation('T-Bone ULLU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone DRRU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone ULRU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone URLU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone DLLU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone DRLD', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
    ]),

    Formation('T-Bone DLRD', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
    ]),

    Formation('T-Bone LUUR', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('T-Bone RUUL', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
    ]),

    Formation('T-Bone LDDR', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('T-Bone RDDL', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
    ]),

    Formation('T-Bone LULU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone ULUL', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
    ]),

    Formation('T-Bone LDLD', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
    ]),

    Formation('T-Bone URDR', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
    ]),

    Formation('T-Bone RLUU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone UURL', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
    ]),

    Formation('T-Bone LRDU', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
    ]),

    Formation('T-Bone UDLR', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
    ]),

    Formation('T-Bone UDLL', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
    ]),

    Formation('T-Bone Couples 1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
    ]),

    Formation('T-Bone Couples 2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
    ]),

    Formation('Phantom Formation In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:0),
    ]),

    Formation('Phantom Formation RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:180),
    ]),

    Formation('Phantom Formation LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:0),
    ]),

    Formation('Phantom Formation Two-Faced', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:180),
    ]),

    Formation('Phantom Lines In', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:5,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:-5,angle:180),
    ]),

    Formation('Phantom Lines Out', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-5,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:5,angle:180),
    ]),

    Formation('Phantom Waves RH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:5,angle:0),
      DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:-5,angle:180),
    ]),

    Formation('Phantom Waves LH', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:90),
      DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
  ]),

    Formation('Tidal Line Girls Disconnected', dancers:[
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
    ]),

    Formation('Siamese Box 1', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:-2,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-2,angle:0),
    ]),

    Formation('Siamese Box 2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:0),
    ]),

    Formation('Siamese Box 3', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:0),
    ]),

    Formation('Siamese Wave', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
    ]),

    Formation('Siamese Wave 2', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:0.5,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:180),
      DancerModel.fromData(gender:Gender.BOY,x:1.0,y:3.0,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.0,y:3.0,angle:0),
    ]),

    Formation('Siamese 2-Faced Line', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:0),
    ]),

    Formation('Siamese Diamond Tandem Centers', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:0,y:4,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
      DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
    ]),

    Formation('Triple Boxes', dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:1.5,y:3,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
      DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
      DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:5,angle:180),
      DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:-5,angle:0),
    ]),


  ];

  static final formationIndex = <String,Formation>{};

  static final Map<RegExp,Formation> _formationMap = {
    '.*lines?'.ri : Formation('Normal Lines'),
    '.*waves?'.ri : Formation('Ocean Waves RH BGGB'),
    '.*thar'.ri : Formation('Thar RH Boys'),
    '.*square(d)?(set)?'.ri : Formation('Squared Set'),
    '.*boxes'.ri : Formation('Eight Chain Thru'),
    '.*bones'.ri: Formation('Eight Chain Thru'),
    '.*columns?'.ri : Formation('Column RH GBGB'),
    '.*(1|3)4tag'.ri : Formation('Quarter Tag'),
    '.*diamonds?'.ri : Formation('Diamonds RH Girl Points'),
    '.*tidal(wave|line)?'.ri : Formation('Tidal Wave RH BGGB'),
    '.*hourglass'.ri : Formation('Hourglass RH BP'),
    '.*galaxy'.ri : Formation('Galaxy RH GP'),
    '.*butterfly'.ri : Formation('Butterfly RH'),
    '.* o'.ri : Formation('O RH'),
    '.*circle'.ri : Formation('Circle'),
    '.*alamo'.ri : Formation('Alamo Wave'),  // actually, same as Circle
    '.*blocks'.ri : Formation('Blocks'),
    '.*sausage'.ri : Formation('Sausage RH'),
    //  two couples
    '.*box'.ri : Formation('Facing Couples')
  };

  factory Formation(String name,
      { List<DancerModel> dancers=const [], bool asymmetric=false}) {
    if (dancers.isEmpty)
      return Formation.fromName(name);
    var f = Formation._internal(name, dancers, asymmetric: asymmetric);
    if (name.isNotBlank) {
      //formations.add(f);
      formationIndex[f.name] = f;
    }
    return f;
  }

  Formation._internal(this.name,this.dancers, {this.asymmetric=false});

  factory Formation.fromName(String name) {
    var fnorm = normalizeCall(name);
    Formation? f;
    //  First try a specific match to any formation
    if (formationIndex.containsKey(name))
      return formationIndex[name]!;
    for (var r in formations) {
      if (fnorm == normalizeCall(r.name))
        return r;
    }
    for (var r in _formationMap.keys) {
      if (fnorm.matches(r))
        f = _formationMap[r]!;
    }
    if (f == null)
      throw CallError('Unable to find formation for $name');
    return f;
  }

  Formation copy() {
    var dcopy = dancers.clone();
    return Formation._internal(name,dcopy,asymmetric: asymmetric);
  }

  XmlElement toXML() => XmlElement('formation'.xml,<XmlAttribute>[
    if (name.isNotEmpty)
      XmlAttribute('name'.xml, name)
    ],<XmlElement>[
      for (var d in dancers)
        XmlElement('dancer'.xml,<XmlAttribute>[
          XmlAttribute('gender'.xml, d.gender==Gender.BOY ? 'boy'
              : d.gender==Gender.GIRL ? 'girl' : 'phantom'),
          XmlAttribute('x'.xml, d.starttx.location.x.s),
          XmlAttribute('y'.xml, d.starttx.location.y.s),
          XmlAttribute('angle'.xml, d.starttx.angle.toDegrees.i.s)
        ])
    ]);

}