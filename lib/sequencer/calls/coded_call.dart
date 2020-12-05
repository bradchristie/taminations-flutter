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

import 'package:taminations/sequencer/calls/a1/pass_in_out.dart';
import 'package:taminations/sequencer/calls/a2/transfer_and.dart';

import '../../extensions.dart';
import '../../tam_utils.dart';
import 'a1/as_couples.dart';
import 'a1/beaus.dart';
import 'a1/belles.dart';
import 'a1/brace_thru.dart';
import 'a1/cast_a_shadow.dart';
import 'a1/clover_and.dart';
import 'a1/cross.dart';
import 'a1/cross_over_circulate.dart';
import 'a1/double_star_thru.dart';
import 'a1/horseshoe_turn.dart';
import 'a1/partner_tag.dart';
import 'a1/quarter_in_out.dart';
import 'a1/roll_to_a_wave.dart';
import 'a1/split_square_thru.dart';
import 'a1/triple_star_thru.dart';
import 'a1/triple_trade.dart';
import 'a1/turn_and_deal.dart';
import 'a2/box_counter_rotate.dart';
import 'a2/single_wheel.dart';
import 'a2/slide.dart';
import 'a2/slip.dart';
import 'a2/slither.dart';
import 'a2/spin_the_windmill.dart';
import 'a2/swing.dart';
import 'a2/zig.dart';
import 'a2/zig_zag.dart';
import 'b1/around_to_a_line.dart';
import 'b1/bend_the_line.dart';
import 'b1/california_twirl.dart';
import 'b1/circulate.dart';
import 'b1/courtesy_turn.dart';
import 'b1/dosado.dart';
import 'b1/face.dart';
import 'b1/half_sashay.dart';
import 'b1/pass_thru.dart';
import 'b1/pull_by.dart';
import 'b1/separate.dart';
import 'b1/split_circulate.dart';
import 'b1/square_thru.dart';
import 'b1/turn_back.dart';
import 'b2/box_the_gnat.dart';
import 'b2/cross_run.dart';
import 'b2/run.dart';
import 'b2/sweep_a_quarter.dart';
import 'b2/touch.dart';
import 'b2/touch_a_quarter.dart';
import 'b2/trade.dart';
import 'b2/wheel_around.dart';
import 'b2/zoom.dart';
import 'c1/anything_chain_thru.dart';
import 'c1/butterfly.dart';
import 'c1/cast_back.dart';
import 'c1/circle_by.dart';
import 'c1/counter_rotate.dart';
import 'call.dart';
import 'common/adjust.dart';
import 'common/and.dart';
import 'common/back_away.dart';
import 'common/boys.dart';
import 'common/center_six.dart';
import 'common/centers.dart';
import 'common/ends.dart';
import 'common/everyone.dart';
import 'common/facing_dancers.dart';
import 'common/fraction.dart';
import 'common/girls.dart';
import 'common/heads.dart';
import 'common/insides.dart';
import 'common/leaders.dart';
import 'common/nothing.dart';
import 'common/one_and_a_half.dart';
import 'common/outsides.dart';
import 'common/promenade_home.dart';
import 'common/quarter_more.dart';
import 'common/same_sex.dart';
import 'common/sides.dart';
import 'common/slide_dir.dart';
import 'common/square_the_set.dart';
import 'common/step.dart';
import 'common/trailers.dart';
import 'common/twice.dart';
import 'common/very_centers.dart';
import 'common/very_ends.dart';
import 'common/while.dart';
import 'ms/cast_off_three_quarters.dart';
import 'ms/cross_fold.dart';
import 'ms/fold.dart';
import 'ms/half_tag.dart';
import 'ms/quarter_tag.dart';
import 'ms/slide_thru.dart';
import 'ms/tag_the_line.dart';
import 'ms/three_quarters_tag.dart';
import 'ms/turn_thru.dart';
import 'ms/walk_and_dodge.dart';
import 'plus/acey_deucey.dart';
import 'plus/diamond_circulate.dart';
import 'plus/explode.dart';
import 'plus/grand_swing_thru.dart';
import 'plus/points.dart';
import 'plus/roll.dart';
import 'plus/spread.dart';

abstract class CodedCall extends Call {

  CodedCall(String name) : super(name.capWords());

  static const specifier = '\\s*(?:boys?|girls?|beaus?|belles?|centers?|ends?|lead(?:er)?s?|trail(?:er)?s?|heads?|sides?|very ?centers?)\\s*';

  static final Map<RegExp, CodedCall Function(String norm)> normCallMap = {

    'aceydeucey'.r: (_) => AceyDeucey(),
    'adjustto.*'.r: (name) => Adjust(name),
    'and'.r: (_) => And(),
    //  Anything Chain Thru should not match Square Chain Thru or others
    '*.(?<!(cross|eight|peel|scatter|spin|square|swing|tag))chainthru'.r:
        (name) => AnythingChainThru(name),
    'around1andcomeintothemiddle'.r: (_) =>
        AroundToALine('Around One and Come Into the Middle'),
    'around1toaline'.r: (_) => AroundToALine('Around One to a Line'),
    'around2toaline'.r: (_) => AroundToALine('Around Two to a Line'),
    'ascouples.*'.r: (name) => AsCouples(name),

    'backaway'.r: (_) => BackAway(),
    'beau'.r: (_) => Beaus(),
    'belle'.r: (_) => Belles(),
    'bendtheline'.r: (_) => BendTheLine(),
    'boxcounterrotate'.r: (_) => BoxCounterRotate(),
    'boy'.r: (_) => Boys(),
    'boxthegnat'.r: (_) => BoxTheGnat(),
    'bracethru'.r: (_) => BraceThru(),
    'butterfly.*'.r: (name) => Butterfly(name),

    'californiatwirl'.r: (_) => CaliforniaTwirl(),
    'castashadowcenter(go|cast)?34'.r: (name) => CastAShadow(name),
    '(cross)castback'.r: (name) => CastBack(name),
    'castoff34'.r: (_) => CastOffThreeQuarters(),
    'center'.r: (_) => Centers(),
    'center6'.r: (_) => CenterSix(),
    'circleby.*'.r: (name) => CircleBy(name),
    'circulate'.r: (_) => Circulate(),
    '(cross)?cloverand(\\w.*)'.r: (name) => CloverAnd(name),
    'cloverleaf'.r: (_) => Cloverleaf(),
    'counterrotate'.r: (_) => CounterRotate(),
    'courtesyturn'.r: (_) => CourtesyTurn(),
    'cross'.r: (_) => Cross(),
    'crossfold'.r: (_) => CrossFold(),
    'crossovercirculate'.r: (_) => CrossOverCirculate(),
    '.*crossrun'.r: (name) => CrossRun(name),

    'diamondcirculate'.r: (_) => DiamondCirculate(),
    '(left)?dosado'.r: (name) => Dosado(name),
    'doublestarthru'.r: (_) => DoubleStarThru(),

    'end'.r: (_) => Ends(),
    'every(one|body)'.r: (name) => Everyone(name),
    'explode'.r: (_) => Explode(),

    'face(in|out|left|right)'.r: (name) => Face(name),
    'facing'.r: (_) => FacingDancers(),
    'fold'.r: (_) => Fold(),
    '\\d\\d'.r: (name) => Fraction(name),

    'girl'.r: (_) => Girls(),
    'grand(left)?swingthru'.r: (name) => GrandSwingThru(name),
    '_grandswing(left|right)?'.r: (name) => GrandSwingX(name),

    '(left)?12tag'.r: (name) => HalfTag(name),
    '(reverse)?12sashay'.r: (name) => HalfSashay(name),
    'head'.r: (name) => Heads(name),
    //  Heads Start, be careful not to match Heads Star Thru
    '(head|side)start(?!hr).*'.r: (name) => HeadsSidesStart(name),
    'horseshoeturn'.r: (_) => HorseshoeTurn(),

    'center(2|4|6)'.r: (name) => Insides(name),
    'in(ner|sides?)(2|4|6)?'.r: (name) => Insides(name),

    'lead'.r: (name) => Leaders(name),

    'nothing'.r: (_) => Nothing(),

    '112'.r: (name) => OneAndaHalf(name),
    'out(er|sides?)(2|4|6)?'.r: (name) => Outsides(name),

    'partnertag'.r: (_) => PartnerTag(),
    'pass(in|out)'.r: (name) => PassInOut(name),
    '(left)?passthru'.r: (name) => PassThru(name),
    'point'.r: (_) => Points(),
    'promenadehome'.r: (name) => PromenadeHome(name),
    'swing(your)?corner(and)?promenade(home)?'.r: (name) => PromenadeHome(name),
    '(left)?pullby'.r: (name) => PullBy(name),

    'quarter(in|out)'.r: (name) => QuarterInOut(name),
    'and14more'.r: (_) => QuarterMore(),
    '(left)?14tag'.r: (name) => QuarterTag(name),

    '(and)?roll'.r: (name) => Roll(name),
    '(left|right)_rollto'.r: (name) => RollTo(name),
    '(left_right)rolltoawave'.r: (name) => RollToAWave(name),
    'run(left|right)?'.r: (name) => Run(name),

    'samesex(es)?'.r: (name) => SameSex(name),
    'separate'.r: (_) => Separate(),
    'side'.r: (name) => Sides(name),
    '(left)?singlewheel'.r: (name) => SingleWheel(name),
    'slide'.r: (_) => Slide(),
    'slide(in|out|left|right)'.r: (name) => SlideDir(name),
    'slidethru'.r: (_) => SlideThru(),
    'slip'.r: (_) => Slip(),
    'slither'.r: (_) => Slither(),
    '(left)?spinthewindmill(left|right|in|out|forward)'.r: (name) => SpinTheWindmill(name),
    'splitcirculate'.r: (_) => SplitCirculate(),
    '(left)?splitsquarethru[2-7]'.r: (name) => SplitSquareThru(name),
    '(and)?spread'.r: (name) => Spread(name),
    'squaretheset'.r: (_) => SquareTheSet(),
    '(left)?squarethru(1|2|3|4|5|6|7)?(toawave)?'.r: (name) => SquareThru(name),
    'step'.r: (_) => Step(),
    'sweep14'.r: (_) => SweepAQuarter(),
    'swing'.r: (_) => Swing(),

    'tagtheline'.r: (_) => TagTheLine(),
    '(left)?34tag(theline)?'.r : (name) => ThreeQuartersTag(name),
    '(left)?touch'.r: (name) => Touch(name),
    '(left)?touch14'.r: (name) => TouchAQuarter(name),
    'trade'.r: (_) => Trade(),
    'trail'.r: (name) => Trailers(name),
    'transferand(.+)'.r: (name) => TransferAnd(name),
    'triplestarthru'.r: (_) => TripleStarThru(),
    'tripletrade'.r: (_) => TripleTrade(),
    '(left)turnthru'.r: (name) => TurnThru(name),
    '(go)?twice'.r: (name) => Twice(name),
    '(left)?turnanddeal'.r: (name) => TurnAndDeal(name),
    'u?turnback'.r: (_) => TurnBack(),

    'verycenters'.r: (_) => VeryCenters(),
    'veryends'.r: (_) => VeryEnds(),

    'walkanddodge'.r: (_) => WalkAndDodge('Walk and Dodge'),
    '${specifier}walk(and)?${specifier}dodge'.r: (name) => WalkAndDodge(name),
    '$specifier${specifier}walk(and)?$specifier${specifier}dodge'.r:
        (name) => WalkAndDodge(name),
    '(reverse)?wheelaround'.r: (name) => WheelAround(name),
    '(and)?(the)?other?.+'.r: (name) => While(name),
    'while(the)?(others?)?.+'.r: (name) => While(name),
    '_windmill(in|out|left|right|forward)'.r: (name) => WindmillX(name),

    'z[ai]g'.r: (name) => Zig(name),
    'z[ai]gz[ai]g'.r: (name) => ZigZag(name),
    'zing|zoom'.r: (name) => Zoom(name)

  };


  factory CodedCall.fromName(String name) {
    var norm = TamUtils.normalizeCall(name);
    for (var r in normCallMap.keys) {
      if (norm.matches(r)) {
        return normCallMap[r].call(name);
      }
    }
    return null;
  }

}
