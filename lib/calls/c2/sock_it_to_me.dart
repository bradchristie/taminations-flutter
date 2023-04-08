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

import '../../animated_call.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> SockItToMe = [

    AnimatedCall('Sock It To Me',
      formation:Formations.NormalLines,
      from:'Lines Facing In',
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',
      paths:[
          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.TidalInvertedLineRH,
      from:'Right-Hand Inverted Tidal Line',
      paths:[
          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.TidalInvertedLineLH,
      from:'Left-Hand Inverted Tidal Line',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.Tidal_3and_1Line2,
      from:'Tidal 3 and 1 Line #2',
      paths:[
          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.Tidal_3and_1Line3,
      from:'Tidal 3 and 1 Line #3',
      paths:[
          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.Tidal_3and_1Line6,
      from:'Tidal 3 and 1 Line #6',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Sock It To Me',
      formation:Formations.Tidal_3and_1Line7,
      from:'Tidal 3 and 1 Line #7',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.NormalLines,
      from:'Lines Facing In',
      paths:[
          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',
      paths:[
          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',
      paths:[
          FlipRight.changeBeats(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(2.0,1.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.TidalInvertedLineRH,
      from:'Right-Hand Inverted Tidal Line',
      paths:[
          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.TidalInvertedLineLH,
      from:'Left-Hand Inverted Tidal Line',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,1.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.Tidal_3and_1Line2,
      from:'Tidal 3 and 1 Line #2',
      paths:[
          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.Tidal_3and_1Line3,
      from:'Tidal 3 and 1 Line #3',
      paths:[
          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(2.0,1.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.Tidal_3and_1Line6,
      from:'Tidal 3 and 1 Line #6',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,1.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Here Comes the Judge',
      formation:Formations.Tidal_3and_1Line7,
      from:'Tidal 3 and 1 Line #7',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,1.5),

          FlipLeft.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5),

          FlipRight.changeBeats(6).scale(1.0,0.5)
      ]),
  ];

