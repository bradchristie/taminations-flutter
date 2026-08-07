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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../moves.dart';
import '../c1/ah_so.dart' as c1;
import '../c1/alter_the_wave.dart' as c1;
import '../c1/anything_and_weave.dart' as c1;
import '../c1/chase_your_neighbor.dart' as c1;
import '../c1/cross_extend.dart' as c1;
import '../c1/cross_roll.dart' as c1;
import '../c1/cross_your_neighbor.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/square_chain_the_top.dart' as c1;
import '../c1/step_and_flip.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/bounce.dart' as c2;
import '../c2/criss_cross_your_neighbor.dart' as c2;
import '../c2/cross_back.dart' as c2;
import '../c2/cross_the_k.dart' as c2;
import '../c2/peel_to_a_diamond.dart' as c2;
import '../c2/split_swap_around.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c3a/couple_up.dart' as c3a;
import '../c3a/follow_to_a_diamond.dart' as c3a;
import '../c3a/lock_the_hinge.dart' as c3a;
import '../c3a/mini_chase.dart' as c3a;
import '../c3a/single_concept.dart' as c3a;
import '../c3b/bingo.dart' as c3b;

final List<AnimatedCallItem> TandemConcept = [
  AnimatedCallGroup(
    'Tandem',
    calls: [
      AnimatedCallHeader(
        'Bend the Line',
        calls: [
          AnimatedCall(
            'Tandem Bend the Line',
            formation: Formation('Two-Faced Lines RH Compact'),
            from: 'Right-Hand Two-Faced Lines',
            group: 'Tandem',
            paths: [
              CounterRotateRight(2.5, 0).changeBeats(3).changehands(Hands.RIGHT),
              CounterRotateRight(0.5, 2).changeBeats(3).changehands(Hands.LEFT),
              CounterRotateRight(-2.5, 0).changeBeats(3).changehands(Hands.LEFT),
              CounterRotateRight(-0.5, -2).changeBeats(3).changehands(Hands.RIGHT),
            ],
          ),

          AnimatedCall(
            'Tandem Bend the Line',
            formation: Formation('Two-Faced Lines LH Compact'),
            from: 'Left-Hand Two-Faced Lines',
            group: 'Tandem',
            paths: [
              CounterRotateLeft(-0.5, 2).changeBeats(3).changehands(Hands.LEFT),
              CounterRotateLeft(-2.5, 0).changeBeats(3).changehands(Hands.RIGHT),
              CounterRotateLeft(0.5, -2).changeBeats(3).changehands(Hands.RIGHT),
              CounterRotateLeft(2.5, 0).changeBeats(3).changehands(Hands.LEFT),
            ],
          ),
        ],
      ),

  AnimatedCallHeader(
  'Box Circulate',
  calls: [
        AnimatedCall(
          'Tandem Box Circulate',
          formation: Formation('Column RH GBGB'),
          group: 'Tandem',
          from: 'Right-Hand Columns',
          paths: [
            CounterRotateRight(0, -2).changeBeats(2.5) +
                CounterRotateRight(0, -2).changeBeats(2.5),
            CounterRotateRight(2, 0).changeBeats(2.5) +
                CounterRotateRight(2, 0).changeBeats(2.5),
            Forward_4.changeBeats(5),
            Forward_4.changeBeats(5),
          ],
        ),

    AnimatedCall(
      'Tandem Box Circulate',
      formation: Formation('Column LH GBGB'),
      group: 'Tandem',
      from: 'Left-Hand Columns',
      paths: [
        Forward_4.changeBeats(5),
        Forward_4.changeBeats(5),
        CounterRotateLeft(2, 0).changeBeats(2.5) +
            CounterRotateLeft(2, 0).changeBeats(2.5),
        CounterRotateLeft(0, 2).changeBeats(2.5) +
            CounterRotateLeft(0, 2).changeBeats(2.5),
      ],
    ),
  ]),

      AnimatedCallHeader('Box Transfer',
        calls: [
          AnimatedCall(
            'Tandem Box Transfer',
            formation: Formation('Column RH GBGB'),
            from: 'Right-Hand Columns',
            group: 'Tandem',
            paths: [
              CounterRotateRight(0, -3).changeBeats(3.333) +
                  CounterRotateRight(1, -3).changeBeats(3.333) +
                  CounterRotateRight(1, -2).changeBeats(3.333),

              CounterRotateRight(2, -1).changeBeats(3.333) +
                  CounterRotateRight(3, -1).changeBeats(3.333) +
                  CounterRotateRight(3, 0).changeBeats(3.333),

              Forward_2 +
                  CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                  CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                  CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                  Forward_2,

              Forward_2 +
                  CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                  CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                  CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                  Forward_2,
            ],
          ),

          AnimatedCall(
            'Tandem Box Transfer',
            formation: Formation('Column LH GBGB'),
            from: 'Left-Hand Columns',
            group: 'Tandem',
            paths: [
              Forward_2 +
                  CounterRotateLeft(2, 0).changehands(Hands.RIGHT) +
                  CounterRotateLeft(2, 0).changehands(Hands.RIGHT) +
                  CounterRotateLeft(2, 0).changehands(Hands.RIGHT) +
                  Forward_2,

              Forward_2 +
                  CounterRotateLeft(0, 2).changehands(Hands.RIGHT) +
                  CounterRotateLeft(0, 2).changehands(Hands.RIGHT) +
                  CounterRotateLeft(0, 2).changehands(Hands.RIGHT) +
                  Forward_2,

              CounterRotateLeft(2, 1).changeBeats(3.333) +
                  CounterRotateLeft(3, 1).changeBeats(3.333) +
                  CounterRotateLeft(3, 0).changeBeats(3.333),

              CounterRotateLeft(0, 3).changeBeats(3.333) +
                  CounterRotateLeft(1, 3).changeBeats(3.333) +
                  CounterRotateLeft(1, 2).changeBeats(3.333),
            ],
          ),
        ],
      ),

      AnimatedCallHeader('Cast Off 3/4', calls: [
        AnimatedCall(
          'Tandem Cast Off 3/4',
          formation: Formation('Column RH GBGB'),
          group: 'Tandem',
          from: 'Right-Hand Columns',
          paths: [
            CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),

            CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),

            CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),

            CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),
          ],
        ),

        AnimatedCall(
          'Tandem Cast Off 3/4',
          formation: Formation('Column LH GBGB'),
          group: 'Tandem',
          from: 'Left-Hand Columns',
          paths: [
            CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
                CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
                CounterRotateLeft(2, -0.5).changehands(Hands.LEFT),

            CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
                CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
                CounterRotateLeft(0, 2.5).changehands(Hands.LEFT),

            CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
                CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
                CounterRotateLeft(2, -0.5).changehands(Hands.LEFT),

            CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
                CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
                CounterRotateLeft(0, 2.5).changehands(Hands.LEFT),
          ],
        ),

        AnimatedCall(
          'Tandem Cast Off 3/4',
          formation: Formation('Two-Faced Lines RH Compact'),
          group: 'Tandem',
          from: 'Right-Hand Two-Faced Lines',
          paths: [
            CounterRotateLeft(1.5,-1.5).changehands(Hands.RIGHT) +
                CounterRotateLeft(0.5,-1.5).changehands(Hands.RIGHT) +
                CounterRotateLeft(0.5,-1).changehands(Hands.RIGHT),
            CounterRotateLeft(3.5,0.5).changehands(Hands.LEFT) +
                CounterRotateLeft(2.5,0.5).changehands(Hands.LEFT) +
                CounterRotateLeft(2.5,1).changehands(Hands.LEFT),
            CounterRotateLeft(0.5,2.5).changehands(Hands.LEFT) +
                CounterRotateLeft(0.5,2.5).changehands(Hands.LEFT) +
                CounterRotateLeft(0.5,3).changehands(Hands.LEFT),
            CounterRotateLeft(-1.5,0.5).changehands(Hands.RIGHT) +
                CounterRotateLeft(-1.5,0.5).changehands(Hands.RIGHT) +
                CounterRotateLeft(-1.5,1).changehands(Hands.RIGHT),
          ],
        ),

        AnimatedCall(
          'Tandem Cast Off 3/4',
          formation: Formation('Two-Faced Lines LH Compact'),
          group: 'Tandem',
          from: 'Left-Hand Two-Faced Lines',
          paths: [
            CounterRotateRight(-1.5,-0.5).changehands(Hands.LEFT) +
                CounterRotateRight(-1.5,-0.5).changehands(Hands.LEFT) +
                CounterRotateRight(-1.5,-1).changehands(Hands.LEFT),
            CounterRotateRight(0.5,-2.5).changehands(Hands.RIGHT) +
                CounterRotateRight(0.5,-2.5).changehands(Hands.RIGHT) +
                CounterRotateRight(0.5,-3).changehands(Hands.RIGHT),
            CounterRotateRight(3.5,-0.5).changehands(Hands.RIGHT) +
                CounterRotateRight(2.5,-0.5).changehands(Hands.RIGHT) +
                CounterRotateRight(2.5,-1).changehands(Hands.RIGHT),
            CounterRotateRight(1.5,1.5).changehands(Hands.LEFT) +
                CounterRotateRight(0.5,1.5).changehands(Hands.LEFT) +
                CounterRotateRight(0.5,1).changehands(Hands.LEFT),
          ],
        ),

      ]),

      AnimatedCall(
        'Tandem Centers Run',
        formation: Formation('Ocean Waves RH BGGB Compact'),
        group: 'Tandem',
        paths: [
          DodgeRight.changeBeats(6),

          Forward +
              CounterRotateRight(0, -2) +
              CounterRotateRight(0, -2) +
              Forward_2.changeBeats(1),

          Forward_2.changeBeats(1) + CounterRotateRight(2, 0) + CounterRotateRight(2, 0) + Forward,

          DodgeRight.changeBeats(6),
        ],
      ),

      AnimatedCall(
        'Tandem Chase Right',
        formation: Formation('Completed Double Pass Thru'),
        group: 'Tandem',
        paths: [
          Pivotbackwardright.skew(-1.0, 0.0) + Forward_3 + RunRight + Forward_2,

          RunRight.changeBeats(5) + Forward_6,

          Pivotforwardleft.skew(-1.0, 0.0) + Forward_5 + RunRight,

          Forward_2 + RunRight.changeBeats(5) + Forward_4,
        ],
      ),

      AnimatedCall(
        'Tandem Left Chase',
        formation: Formation('Completed Double Pass Thru'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          RunLeft.changeBeats(5) + Forward_6,

          Pivotbackwardleft.skew(-1.0, 0.0) + Forward_3 + RunLeft + Forward_2,

          Forward_2 + RunLeft.changeBeats(5) + Forward_4,

          Pivotforwardright.skew(-1.0, 0.0) + Forward_5 + RunLeft,
        ],
      ),

      AnimatedCall(
        'Tandem Courtesy Turn',
        formation: Formation('Completed Double Pass Thru'),
        group: 'Tandem',
        paths: [
          CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT),

          CounterRotateLeft(-2, 0).changehands(Hands.RIGHT) +
              CounterRotateLeft(-2, 0).changehands(Hands.RIGHT),

          CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT),

          CounterRotateLeft(0, -2).changehands(Hands.RIGHT) +
              CounterRotateLeft(0, -2).changehands(Hands.RIGHT),
        ],
      ),

      AnimatedCallHeader('Crossfire',
        calls: [
          AnimatedCall(
            'Tandem Crossfire',
            formation: Formation('Two-Faced Lines RH Compact'),
            from: 'Right-Hand Two-Faced Lines',
            group: 'Tandem',
            paths: [
              Forward_3.skew(0.5, 0).changeBeats(3) + RunRight.changeBeats(4).scale(1.0, 2.0).skew(1.0, 0.0),

              CounterRotateRight(2.5, 0).changehands(Hands.RIGHT) +
                  CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
                  Forward_2,

              CounterRotateRight(-0.5, -2).changehands(Hands.RIGHT) +
                  CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
                  Forward_2,

              RunRight.changeBeats(6).scale(1.5, 2.0).skew(0.5,0) +
                  Forward,
            ],
          ),

          AnimatedCall(
            'Tandem Crossfire',
            formation: Formation('Two-Faced Lines LH Compact'),
            from: 'Left-Hand Two-Faced Lines',
            group: 'Tandem',
            paths: [
              RunLeft.changeBeats(6).scale(1.0, 2.0).skew(0.5, 0) + Forward,

              CounterRotateLeft(-0.5, 2).changehands(Hands.LEFT) +
                  CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
                  Forward_2,

              CounterRotateLeft(2.5, 0).changehands(Hands.LEFT) +
                  CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
                  Forward_2,

              Forward_3.skew(0.5,0).changeBeats(3) + RunLeft.changeBeats(4).scale(1.0, 2.0).skew(1.0, 0.0),
            ],
          ),
        ],
      ),
      AnimatedCall(
        'Tandem Cut the Diamond',
        formation: Formation('T-Bone ULLD'),
        group: 'Tandem',
        paths: [
          DodgeRight +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT).skew(0.0, 0.5),

          ExtendLeft + LeadRight.changeBeats(4).scale(1.0, 3.0).skew(0.0, -0.5),

          Forward + ExtendLeft + Forward + LeadRight.skew(0.0, 0.5),

          DodgeRight +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT).skew(0.0, -0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Cut the Diamond',
        formation: Formation('T-Bone DRRU'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          DodgeLeft +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT).skew(0.0, 0.5),

          Forward + ExtendRight + Forward + LeadLeft.skew(0.0, -0.5),

          ExtendRight + LeadLeft.changeBeats(4).scale(1.0, 3.0).skew(0.0, 0.5),

          DodgeLeft +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT).skew(0.0, -0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Diamond Circulate',
        formation: Formation('T-Bone ULLD'),
        group: 'Tandem',
        taminator: '''
    If you have trouble visualizing the diamond, look at the center
    point of each tandem.
    ''',
        paths: [
          Forward.changeBeats(1.5) + LeadRight.changeBeats(2.5).scale(1.0, 2.0),

          Forward + LeadRight.changeBeats(3).scale(1.0, 2.0),

          Forward_3 + QuarterRight.skew(1.0, 0.0),

          QuarterRight.skew(0.0, -1.0) + Forward_3,
        ],
      ),

      AnimatedCall(
        'Tandem Diamond Circulate',
        formation: Formation('T-Bone DRRU'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          QuarterLeft.skew(0.0, 1.0) + Forward_3,

          Forward_3 + QuarterLeft.skew(1.0, 0.0),

          Forward + LeadLeft.changeBeats(3).scale(1.0, 2.0),

          Forward.changeBeats(1.5) + LeadLeft.changeBeats(2.5).scale(1.0, 2.0),
        ],
      ),

      AnimatedCall(
        'Tandem Dixie Style to a Wave',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        paths: [
          Back.changeBeats(2) +
              DodgeRight +
              Forward.changeBeats(2) +
              CounterRotateLeft(2, -0.5).changehands(Hands.LEFT),

          ExtendLeft.changeBeats(2).scale(1.5, 1.5) +
              Forward_2.changeBeats(3) +
              ExtendRight.changeBeats(2).scale(0.5, 1.0) +
              CounterRotateLeft(2, -1).changehands(Hands.LEFT),

          Back_2 + DodgeRight + Forward_2 + CounterRotateLeft(0, 2.5).changehands(Hands.LEFT),

          ExtendLeft.changeBeats(2).scale(1.0, 1.5) +
              Forward_2.changeBeats(3) +
              ExtendRight.changeBeats(2) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT),
        ],
      ),

      AnimatedCall(
        'Tandem Fan the Top',
        formation: Formation('Ocean Waves RH BGGB Compact'),
        group: 'Tandem',
        paths: [
          CounterRotateRight(4.5, -1.5).changeBeats(9),

          CounterRotateLeft(-0.5, 2.5).changeBeats(3) +
              CounterRotateLeft(-0.5, 2.5).changeBeats(3) +
              CounterRotateLeft(-0.5, 2.5).changeBeats(3),

          CounterRotateLeft(2.5, -0.5).changeBeats(3) +
              CounterRotateLeft(2.5, -0.5).changeBeats(3) +
              CounterRotateLeft(2.5, -0.5).changeBeats(3),

          CounterRotateRight(1.5, -4.5).changeBeats(9),
        ],
      ),

      AnimatedCall(
        'Tandem Fan the Top',
        formation: Formation('Ocean Waves LH BGGB'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          CounterRotateLeft(1, 5).changeBeats(9),

          CounterRotateRight(3, 1).changeBeats(3) +
              CounterRotateRight(3, 1).changeBeats(3) +
              CounterRotateRight(3, 1).changeBeats(3),

          CounterRotateRight(-1, -3).changeBeats(3) +
              CounterRotateRight(-1, -3).changeBeats(3) +
              CounterRotateRight(-1, -3).changeBeats(3),

          CounterRotateLeft(5, 1).changeBeats(9),
        ],
      ),

      AnimatedCall(
        'Tandem Flip the Diamond',
        formation: Formation('T-Bone ULLD'),
        group: 'Tandem',
        paths: [
          Forward_2 + RunRight.skew(0.5, 0.0),

          Forward + LeadRight.changeBeats(3).scale(1.0, 2.0).skew(0.0, -0.5),

          Forward_3 + QuarterRight.skew(1.0, 0.5),

          RunRight + Forward_2.skew(0.5, 0.0),
        ],
      ),

      AnimatedCall(
        'Tandem Flip the Diamond',
        formation: Formation('T-Bone DRRU'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          RunLeft + Forward_2.skew(0.5, 0.0),

          Forward_3 + QuarterLeft.skew(1.0, -0.5),

          Forward + LeadLeft.changeBeats(3).scale(1.0, 2.0).skew(0.0, 0.5),

          Forward_2 + RunLeft.skew(0.5, 0.0),
        ],
      ),

      AnimatedCallHeader('Follow Your Neighbor', calls: [
      AnimatedCall(
        'Tandem Follow Your Neighbor',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        from: 'Right-Hand Columns',
        paths: [
          Forward_2 +
              CounterRotateRight(0, -2) +
              CounterRotateRight(0, -2) +
              CounterRotateRight(0, -2).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateRight(2, 0) +
              CounterRotateRight(2, 0) +
              CounterRotateRight(2, 0).skew(0.0, 0.5),

          Forward_2 +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT).skew(0.0, 0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Follow Your Neighbor',
        formation: Formation('Column LH GBGB'),
        group: 'Tandem',
        from: 'Left-Hand Columns',
        paths: [
          Forward_2 +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT).skew(0.0, 0.5),

          Forward_2 +
              CounterRotateLeft(2, 0) +
              CounterRotateLeft(2, 0) +
              CounterRotateLeft(2, 0).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateLeft(0, 2) +
              CounterRotateLeft(0, 2) +
              CounterRotateLeft(0, 2).skew(0.0, 0.5),
        ],
      ),


]),
      AnimatedCall(
        'Tandem Follow Your Neighbor',
        formation: Formation('Column LH GBGB'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          Forward_2 +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT).skew(0.0, 0.5),

          Forward_2 +
              CounterRotateLeft(2, 0) +
              CounterRotateLeft(2, 0) +
              CounterRotateLeft(2, 0).skew(0.0, -0.5),

          Forward_2 +
              CounterRotateLeft(0, 2) +
              CounterRotateLeft(0, 2) +
              CounterRotateLeft(0, 2).skew(0.0, 0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Hinge',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        paths: [
          CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),

          CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),

          CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),

          CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),
        ],
      ),

      AnimatedCall(
        'Tandem Partner Hinge',
        formation: Formation('Completed Double Pass Thru'),
        group: 'Tandem',
        paths: [
          QuarterLeft.changeBeats(3).skew(-2.0, 2.5),

          CounterRotateRight(0, -2).changeBeats(3).skew(0.0, -0.5),

          QuarterLeft.changeBeats(3).skew(0.0, -0.5),

          CounterRotateRight(2, 0).changeBeats(3).skew(0.0, 0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Pass the Ocean',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        paths: [
          ExtendLeft.scale(1.0, 0.5) +
              Forward_4 + QuarterRight.skew(1,0),

          ExtendLeft.scale(1.0, 0.5) +
              Forward_2 +
              QuarterLeft.changeBeats(4).skew(1, -1),

          ExtendLeft.scale(1.0, 0.5) +
              Forward +
              LeadRight.changeBeats(4).scale(2, 3),

          ExtendLeft.scale(1.0, 0.5) +
              Forward +
              QuarterLeft.changeBeats(4).skew(0, 2),
        ],
      ),

      AnimatedCall(
        'Tandem Pass Thru',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        paths: [
          ExtendLeft.scale(1.0, 0.5) + Forward_2 + ExtendRight.scale(1.0, 0.5),

          ExtendLeft.scale(1.0, 0.5) + Forward_2 + ExtendRight.scale(1.0, 0.5),

          ExtendLeft.scale(1.0, 0.5) + Forward_2 + ExtendRight.scale(1.0, 0.5),

          ExtendLeft.scale(1.0, 0.5) + Forward_2 + ExtendRight.scale(1.0, 0.5),
        ],
      ),

      AnimatedCall(
        'Tandem Peel Off',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        paths: [
          RunLeft.skew(-1.0, 0.0) +
              Forward.changeBeats(3).scale(3.5, 1),
          Forward.changeBeats(2) +
              RunLeft.skew(-0.5,0),
          Forward_2 +
              Pivotbackwardleft.changeBeats(4).skew(-0.5, 0.0),
          Forward_2 +
              Pivotforwardright.changeBeats(4).scale(1.0, 0.5).skew(0.5, 0.0),
        ],
      ),

      AnimatedCall(
        'Tandem Peel Off',
        formation: Formation('Column LH GBGB'),
        group: 'Tandem',
        noDisplay: true,
        paths: [
          Forward_2 + Pivotforwardleft.changeBeats(4).scale(1.0, 0.5).skew(1.0, 0.0),

          Forward_2 + Pivotbackwardright.changeBeats(4).skew(-1.0, 0.0),

          Forward.changeBeats(2) + RunRight,

          RunRight.skew(-1.0, 0.0) + Forward_4.changeBeats(3),
        ],
      ),

      AnimatedCall(
        'Tandem Quarter Thru',
        formation: Formation('', dancers: [
            Dancer.fromData(gender: Gender.GIRL, x: -1, y: 3, angle: 90),
            Dancer.fromData(gender: Gender.BOY, x: -1, y: 1, angle: 90),
            Dancer.fromData(gender: Gender.GIRL, x: -1, y: -1, angle: 90),
            Dancer.fromData(gender: Gender.BOY, x: -1, y: -3, angle: 90),
          ]),
        group: 'Tandem',
        fractions: '2',
        paths: [
          CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),
          CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),
          CounterRotateRight(0, -2.5).changehands(Hands.RIGHT) +
              CounterRotateLeft(-0.5, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2.5).changehands(Hands.LEFT),
          CounterRotateRight(2, 0.5).changehands(Hands.RIGHT) +
              CounterRotateLeft(2.5, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, -0.5).changehands(Hands.LEFT),
        ],
      ),

      AnimatedCallHeader('Recycle', calls: [
        AnimatedCall(
          'Tandem Recycle',
          formation: Formation('Ocean Waves RH BGGB Compact'),
          from: 'Right-Hand Waves',
          group: 'Tandem',
          paths: [
            CounterRotateRight(4.5,0).changeBeats(4) +
                CounterRotateRight(4,0).changeBeats(4),
            CounterRotateRight(-1,-2) +
                CounterRotateRight(-1,-2) +
                CounterRotateRight(-0.5,-1) +
                QuarterRight.changeBeats(2),
            CounterRotateRight(2,0) +
                CounterRotateRight(1,0) +
                CounterRotateRight(1.5,1) +
                CounterRotateRight(2,2),
            CounterRotateRight(1.5,-2).changeBeats(4) +
                CounterRotateRight(2,-2).changeBeats(4)
          ],
        ),

        AnimatedCall(
          'Tandem Recycle',
          formation: Formation('Ocean Waves LH BGGB Compact'),
          from: 'Left-Hand Waves',
          group: 'Tandem',
          paths: [
            CounterRotateLeft(1.5,2).changeBeats(4) +
                CounterRotateLeft(2,2).changeBeats(4),
            CounterRotateLeft(2,0) +
                CounterRotateLeft(1,0) +
                CounterRotateLeft(1.5,-1) +
                CounterRotateLeft(2,-2),
            CounterRotateLeft(-1,2) +
                CounterRotateLeft(-1,2) +
                CounterRotateLeft(-0.5,1) +
                QuarterLeft.changeBeats(2),
            CounterRotateLeft(4.5,0).changeBeats(4) +
                CounterRotateLeft(4,0).changeBeats(4),
          ],
        ),

        AnimatedCall(
          'Tandem Recycle',
          formation: Formation('Double Pass Thru'),
          from: 'Double Pass Thru',
          group: 'Tandem',
          paths: [
            CounterRotateRight(3,1).changeBeats(3) +
                CounterRotateRight(1,1.5).changeBeats(3),
            DodgeLeft +
                ExtendLeft.changeBeats(3).scale(1.5,2),
            CounterRotateRight(1,-0.5).changeBeats(3) +
                CounterRotateRight(-0.5,-1.5).changeBeats(3),
            DodgeLeft.skew(-0.5,0) +
                ExtendLeft.changeBeats(3).scale(3,2)
          ],
        ),

        AnimatedCall(
          'Tandem Recycle',
          formation: Formation('Column RH GBGB'),
          group: 'Tandem',
          from: 'Right-Hand Columns',
          paths: [
            CounterRotateRight(-1,-3).changeBeats(3).changehands(Hands.RIGHT) +
                CounterRotateRight(1,-3.5).changeBeats(3).changehands(Hands.RIGHT),
            CounterRotateRight(1,-1.5).changeBeats(3).changehands(Hands.RIGHT) +
                CounterRotateRight(2.5,-0.5).changeBeats(3).changehands(Hands.RIGHT),
            CounterRotateRight(1,-0.5).changeBeats(3).changehands(Hands.RIGHT) +
                CounterRotateRight(-0.5,-1.5).changeBeats(3).changehands(Hands.RIGHT),
            CounterRotateRight(3,1).changeBeats(3).changehands(Hands.RIGHT) +
                CounterRotateRight(1,1.5).changeBeats(3).changehands(Hands.RIGHT),
          ],
        ),

        AnimatedCall(
          'Tandem Recycle',
          formation: Formation('Column LH GBGB'),
          group: 'Tandem',
          from: 'Left-Hand Columns',
          paths: [
            CounterRotateLeft(3,-1).changeBeats(3).changehands(Hands.LEFT) +
                CounterRotateLeft(1,-1.5).changeBeats(3).changehands(Hands.LEFT),
            CounterRotateLeft(1,0.5).changeBeats(3).changehands(Hands.LEFT) +
                CounterRotateLeft(-0.5,1.5).changeBeats(3).changehands(Hands.LEFT),
            CounterRotateLeft(1,1.5).changeBeats(3).changehands(Hands.LEFT) +
                CounterRotateLeft(2.5,0.5).changeBeats(3).changehands(Hands.LEFT),
            CounterRotateLeft(-1,3).changeBeats(3).changehands(Hands.LEFT) +
                CounterRotateLeft(1,3.5).changeBeats(3).changehands(Hands.LEFT),
          ],
        ),

      ]),

      AnimatedCall(
        'Tandem Right and Left Thru',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        paths: [
          ExtendLeft.scale(1.0, 0.5) +
              Forward_2 +
              ExtendRight.scale(1.0, 0.5) +
              CounterRotateLeft(0, -2).changehands(Hands.RIGHT) +
              CounterRotateLeft(0, -2).changehands(Hands.RIGHT),

          ExtendLeft.scale(1.0, 0.5) +
              Forward_2 +
              ExtendRight.scale(1.0, 0.5) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT),

          ExtendLeft.scale(1.0, 0.5) +
              Forward_2 +
              ExtendRight.scale(1.0, 0.5) +
              CounterRotateLeft(-2, 0).changehands(Hands.RIGHT) +
              CounterRotateLeft(-2, 0).changehands(Hands.RIGHT),

          ExtendLeft.scale(1.0, 0.5) +
              Forward_2 +
              ExtendRight.scale(1.0, 0.5) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT),
        ],
      ),

      AnimatedCall(
        'Tandem Right Roll to a Wave',
        formation: Formation('Column LH GBGB'),
        group: 'Tandem',
        paths: [
          Forward_1p5.changeBeats(2),
          Forward_2.changeBeats(4).skew(0.5, 0),
          Forward.changeBeats(2) +
              RunRight.skew(-0.5,0),
          RunRight.skew(-1.0, 0.0) +
              Forward_3.skew(0.5,0),
        ],
      ),

      AnimatedCall(
        'Tandem Scoot Back',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        paths: [
          RunRight.changeBeats(5) + Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) + RunRight.changeBeats(5),

          Forward_2 +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              Forward_2,

          Forward_2 +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              Forward_2,
        ],
      ),

      AnimatedCall(
        'Tandem Single Wheel',
        formation: Formation('Completed Double Pass Thru'),
        group: 'Tandem',
        paths: [
          FlipLeft.scale(1.0, 0.5).skew(-1.0, 0.0) +
              Forward_2.scale(0.6, 1.0),
          FlipRight.changeBeats(5).scale(1.0, 0.5).skew(0.4, 0.0),
          Forward.changeBeats(2) +
              FlipLeft.scale(1.0, 0.5),
          Forward_3 +
              FlipRight.scale(1.0, 0.5).skew(0.7, 0.0),
        ],
      ),

      AnimatedCall(
        'Tandem Square Chain Thru',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        fractions: '5;4;4',
        paths: [
          ExtendLeft.changeBeats(2).scale(2.0, 1.5) +
              CounterRotateRight(2, 0).changeBeats(3).skew(0.0, -1.5) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              Stand.changeBeats(4) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              Forward_2.changeBeats(3),

          Forward_2 +
              CounterRotateLeft(2, 0).changeBeats(3).skew(2.0, 0.0) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, 0).changehands(Hands.LEFT) +
              ExtendLeft.changeBeats(3).scale(2.0, 2.0),

          ExtendLeft.changeBeats(2).scale(2.0, 1.5) +
              CounterRotateRight(0, -2).changeBeats(3).skew(0.0, -1.5) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              Stand.changeBeats(4) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              Forward_2.changeBeats(3),

          Forward_2 +
              CounterRotateLeft(0, 2).changeBeats(3).skew(2.0, 0.0) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2).changehands(Hands.LEFT) +
              ExtendLeft.changeBeats(3).scale(2.0, 2.0),
        ],
      ),

      AnimatedCall(
        'Tandem Swing Thru',
        formation: Formation('Ocean Waves RH BGGB Compact'),
        group: 'Tandem',
        fractions: '4',
        paths: [
          CounterRotateRight(2.5, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0.5).changehands(Hands.RIGHT) +
              CounterRotateLeft(2.5, 0).changehands(Hands.LEFT) +
              CounterRotateLeft(2, -0.5).changehands(Hands.LEFT),

          CounterRotateRight(-0.5, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2.5).changehands(Hands.RIGHT),

          CounterRotateRight(2.5, 0).changehands(Hands.RIGHT) +
              CounterRotateRight(2, 0.5).changehands(Hands.RIGHT),

          CounterRotateRight(-0.5, -2).changehands(Hands.RIGHT) +
              CounterRotateRight(0, -2.5).changehands(Hands.RIGHT) +
              CounterRotateLeft(-0.5, 2).changehands(Hands.LEFT) +
              CounterRotateLeft(0, 2.5).changehands(Hands.LEFT),
        ],
      ),

AnimatedCallHeader('Switch the Wave', calls: [
      AnimatedCall(
        'Tandem Switch the Wave',
        formation: Formation('Ocean Waves RH BGGB Compact'),
        from: 'Right-Hand Waves',
        group: 'Tandem',
        paths: [
          Forward_3 +
              RunRight.changeBeats(5).scale(1.0, 2.0),
          RunRight +
              Forward_3,
          Forward_3 +
              RunRight,
          RunRight.changeBeats(5).scale(1.0, 2.0)
              + Forward_3,
        ],
      ),

      AnimatedCall(
        'Tandem Switch the Wave',
        formation: Formation('Ocean Waves LH BGGB Compact'),
        from: 'Left-Hand Waves',
        group: 'Tandem',
        paths: [
          RunLeft.changeBeats(5).scale(1.0, 2.0) +
              Forward_3,
          Forward_3 +
              RunLeft,
          RunLeft +
              Forward_3,
          Forward_3 +
              RunLeft.changeBeats(5).scale(1.0, 2.0),
        ],
      ),
]),
      AnimatedCall(
        'Tandem Touch 1/4',
        formation: Formation('Double Pass Thru'),
        group: 'Tandem',
        paths: [
          ExtendLeft.changeBeats(2).scale(2.0, 2.0) +
              CounterRotateRight(2, 0).changehands(Hands.RIGHT),

          Forward_2 + CounterRotateRight(2, 0).changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(2).scale(2.0, 2.0) +
              CounterRotateRight(0, -2).changehands(Hands.RIGHT),

          Forward_2 + CounterRotateRight(0, -2).changehands(Hands.RIGHT),
        ],
      ),

      AnimatedCall(
        'Tandem Walk and Dodge',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        paths: [DodgeRight.changeBeats(4), DodgeRight.changeBeats(4), Forward_4, Forward_4],
      ),

      AnimatedCall(
        'Tandem Zoom',
        formation: Formation('Column RH GBGB'),
        group: 'Tandem',
        paths: [
          FlipLeft.changeBeats(2).scale(0.75, 0.75) +
              Forward_6 +
              FlipLeft.changeBeats(2).scale(0.75, 0.75) +
              Forward_2,

          Forward_2 +
              FlipLeft.changeBeats(2).scale(0.75, 0.75) +
              Forward_6 +
              FlipLeft.changeBeats(2).scale(0.75, 0.75),

          Forward_4,

          Forward_4,
        ],
      ),
    ],
  ),

  AnimatedCallHeader(
    'Tandem (C-1)',
    calls: [
      c1.Recycle.where(
        (tam) => tam.title == 'Tandem 2/3 Recycle',
      ).first.xref(title: 'Tandem 2/3 Recycle').xref(group: 'Tandem (C-1)'),
      c1.AhSo.where(
        (tam) => tam.title == 'Tandem Ah So',
      ).first.xref(title: 'Tandem Ah So').xref(group: 'Tandem (C-1)'),
      c1.AlterTheWave.where(
        (tam) => tam.title == 'Tandem Alter the Wave',
      ).first.xref(title: 'Tandem Alter the Wave').xref(group: 'Tandem (C-1)'),
      c1.Recycle.where(
        (tam) => tam.title == 'Tandem Box Recycle',
      ).first.xref(title: 'Tandem Box Recycle').xref(group: 'Tandem (C-1)'),
      c1.ChaseYourNeighbor.where(
        (tam) => tam.title == 'Tandem Chase Your Neighbor',
      ).first.xref(title: 'Tandem Chase Your Neighbor').xref(group: 'Tandem (C-1)'),
      c1.CrossExtend.where(
        (tam) => tam.title == 'Tandem Cross Extend',
      ).first.xref(title: 'Tandem Cross Extend').xref(group: 'Tandem (C-1)'),
      c1.CrossRoll.where(
        (tam) => tam.title == 'Tandem Cross Roll',
      ).first.xref(title: 'Tandem Cross Roll').xref(group: 'Tandem (C-1)'),
      c1.CrossYourNeighbor.where(
        (tam) => tam.title == 'Tandem Cross Your Neighbor',
      ).first.xref(title: 'Tandem Cross Your Neighbor').xref(group: 'Tandem (C-1)'),
      c1.FollowThru.where(
        (tam) => tam.title == 'Tandem Follow Thru',
      ).first.xref(title: 'Tandem Follow Thru').xref(group: 'Tandem (C-1)'),
      c1.ReverseExplode.where(
        (tam) => tam.title == 'Tandem Reverse Explode',
      ).first.xref(title: 'Tandem Reverse Explode').xref(group: 'Tandem (C-1)'),
      c1.SquareChainTheTop.where(
        (tam) => tam.title == 'Tandem Square Chain the Top',
      ).first.xref(title: 'Tandem Square Chain the Top').xref(group: 'Tandem (C-1)'),
      c1.StepAndFlip.where(
        (tam) => tam.title == 'Tandem Step and Flip',
      ).first.xref(title: 'Tandem Step and Flip').xref(group: 'Tandem (C-1)'),
      c1.StepAndFold.where(
        (tam) => tam.title == 'Tandem Step and Fold',
      ).first.xref(title: 'Tandem Step and Fold').xref(group: 'Tandem (C-1)'),
      c1.AnythingAndWeave.where(
        (tam) => tam.title == 'Tandem Weave',
      ).first.xref(title: 'Tandem Weave').xref(group: 'Tandem (C-1)'),
      c1.WheelFanThru.where(
        (tam) => tam.title == 'Tandem Wheel Fan Thru',
      ).first.xref(title: 'Tandem Wheel Fan Thru').xref(group: 'Tandem (C-1)'),
      c1.WheelFanThru.where(
        (tam) => tam.title == 'Tandem Left Wheel Fan Thru',
      ).first.xref(title: 'Tandem Left Wheel Fan Thru').xref(group: 'Tandem (C-1)'),
      c1.Zing.where(
        (tam) => tam.title == 'Tandem Zing',
      ).first.xref(title: 'Tandem Zing').xref(group: 'Tandem (C-1)'),
    ],
  ),

  AnimatedCallHeader(
    'Tandem (C-2)',
    calls: [
      c2.Bounce.where(
        (tam) => tam.title == 'Tandem Bounce the Centers',
      ).first.xref(title: 'Tandem Bounce the Centers').xref(group: 'Tandem (C-2)'),
      c2.CrissCrossYourNeighbor.where(
        (tam) => tam.title == 'Tandem Criss Cross Your Neighbor',
      ).first.xref(title: 'Tandem Criss Cross Your Neighbor').xref(group: 'Tandem (C-2)'),
      c2.CrossBack.where(
        (tam) => tam.title == 'Tandem Cross Back',
      ).first.xref(title: 'Tandem Cross Back').xref(group: 'Tandem (C-2)'),
      c2.PeelToADiamond.where(
        (tam) => tam.title == 'Tandem Peel to a Diamond',
      ).first.xref(title: 'Tandem Peel to a Diamond').xref(group: 'Tandem (C-2)'),
      c2.SplitSwapAround.where(
        (tam) => tam.title == 'Tandem Reverse Split Swap Around',
      ).first.xref(title: 'Tandem Reverse Split Swap Around').xref(group: 'Tandem (C-2)'),
      c2.SplitSwapAround.where(
        (tam) => tam.title == 'Tandem Split Swap Around',
      ).first.xref(title: 'Tandem Split Swap Around').xref(group: 'Tandem (C-2)'),
      c2.CrossTheK.where(
        (tam) => tam.title == 'Tandem the K',
      ).first.xref(title: 'Tandem The K').xref(group: 'Tandem (C-2)'),
      c2.PeelToADiamond.where(
        (tam) => tam.title == 'Tandem Trail to a Diamond',
      ).first.xref(title: 'Tandem Trail to a Diamond').xref(group: 'Tandem (C-2)'),
      c2.TurnToALine.where(
        (tam) => tam.title == 'Tandem Turn to a Line',
      ).first.xref(title: 'Tandem Turn to a Line').xref(group: 'Tandem (C-2)'),
    ],
  ),

  AnimatedCallHeader(
    'Tandem (C-3A)',
    calls: [
      c3a.CoupleUp.where(
        (tam) => tam.title == 'Tandem Couple Up',
      ).first.xref(title: 'Tandem Couple Up').xref(group: 'Tandem (C-3A)'),
      c3a.FollowToADiamond.where(
        (tam) => tam.title == 'Tandem Follow to a Diamond',
      ).first.xref(title: 'Tandem  Follow to a Diamond').xref(group: 'Tandem (C-3A)'),
      c3a.LockTheHinge.where(
        (tam) => tam.title == 'Tandem Hinge the Lock',
      ).first.xref(title: 'Tandem Hinge the Lock').xref(group: 'Tandem (C-3A)'),
      c3a.LockTheHinge.where(
        (tam) => tam.title == 'Tandem Lock the Hinge',
      ).first.xref(title: 'Tandem Lock the Hinge').xref(group: 'Tandem (C-3A)'),
      c3a.MiniChase.where(
        (tam) => tam.title == 'Tandem Mini Chase',
      ).first.xref(title: 'Tandem Mini Chase').xref(group: 'Tandem (C-3A)'),
      c3a.SingleConcept.where(
        (tam) => tam.title == 'Tandem Single Checkmate',
      ).first.xref(title: 'Tandem Single Checkmate').xref(group: 'Tandem (C-3A)'),
    ],
  ),

  AnimatedCallHeader(
    'Tandem (C-3B)',
    calls: [
      c3b.Bingo.where(
        (tam) => tam.title == 'Tandem Bingo',
      ).first.xref(title: 'Tandem Bingo').xref(group: 'Tandem (C-3B)'),
    ],
  ),
];
