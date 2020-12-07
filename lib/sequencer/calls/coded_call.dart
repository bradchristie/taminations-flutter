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
import 'a1/pass_in_out.dart';
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
import 'a2/transfer_and.dart';
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
import 'c1/concentric_concept.dart';
import 'c1/counter_rotate.dart';
import 'c1/finish.dart';
import 'c1/ignore.dart';
import 'c1/jaywalk.dart';
import 'c1/little.dart';
import 'c1/make_magic.dart';
import 'c1/mini_busy_but.dart';
import 'c1/o_formation.dart';
import 'c1/ramble.dart';
import 'c1/scoot_and_ramble.dart';
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

    'aceydeucey'.ri: (_) => AceyDeucey(),
    'adjustto.*'.ri: (name) => Adjust(name),
    'and'.ri: (_) => And(),
    //  Anything Chain Thru should not match Square Chain Thru or others
    '*.(?<!(cross|eight|peel|scatter|spin|square|swing|tag))chainthru'.ri:
        (name) => AnythingChainThru(name),
    'around1andcomeintothemiddle'.ri: (_) =>
        AroundToALine('Around One and Come Into the Middle'),
    'around1toaline'.ri: (_) => AroundToALine('Around One to a Line'),
    'around2toaline'.ri: (_) => AroundToALine('Around Two to a Line'),
    'ascouples.*'.ri: (name) => AsCouples(name),

    'backaway'.ri: (_) => BackAway(),
    'beau'.ri: (_) => Beaus(),
    'belle'.ri: (_) => Belles(),
    'bendtheline'.ri: (_) => BendTheLine(),
    'boxcounterrotate'.ri: (_) => BoxCounterRotate(),
    'boy'.ri: (_) => Boys(),
    'boxthegnat'.ri: (_) => BoxTheGnat(),
    'bracethru'.ri: (_) => BraceThru(),
    'butterfly.*'.ri: (name) => Butterfly(name),

    'californiatwirl'.ri: (_) => CaliforniaTwirl(),
    'castashadowcenter(go|cast)?34'.ri: (name) => CastAShadow(name),
    '(cross)castback'.ri: (name) => CastBack(name),
    'castoff34'.ri: (_) => CastOffThreeQuarters(),
    'center'.ri: (_) => Centers(),
    'center6'.ri: (_) => CenterSix(),
    'circleby.*'.ri: (name) => CircleBy(name),
    'circulate'.ri: (_) => Circulate(),
    '(cross)?cloverand(\\w.*)'.ri: (name) => CloverAnd(name),
    'cloverleaf'.ri: (_) => Cloverleaf(),
    'concentric.+'.ri: (name) => ConcentricConcept(name),
    'counterrotate'.ri: (_) => CounterRotate(),
    'courtesyturn'.ri: (_) => CourtesyTurn(),
    'cross'.ri: (_) => Cross(),
    'crossfold'.ri: (_) => CrossFold(),
    'crossovercirculate'.ri: (_) => CrossOverCirculate(),
    '.*crossrun'.ri: (name) => CrossRun(name),

    'diamondcirculate'.ri: (_) => DiamondCirculate(),
    '(left)?dosado'.ri: (name) => Dosado(name),
    'doublestarthru'.ri: (_) => DoubleStarThru(),

    'end'.ri: (_) => Ends(),
    'every(one|body)'.ri: (name) => Everyone(name),
    'explode'.ri: (_) => Explode(),

    'face(in|out|left|right)'.ri: (name) => Face(name),
    'facing'.ri: (_) => FacingDancers(),
    'finish.+'.ri: (name) => Finish(name),
    'fold'.ri: (_) => Fold(),
    '\\d\\d'.ri: (name) => Fraction(name),

    'girl'.ri: (_) => Girls(),
    'grand(left)?swingthru'.ri: (name) => GrandSwingThru(name),
    '_grandswing(left|right)?'.ri: (name) => GrandSwingX(name),

    '(left)?12tag'.ri: (name) => HalfTag(name),
    '(reverse)?12sashay'.ri: (name) => HalfSashay(name),
    'head'.ri: (name) => Heads(name),
    //  Heads Start, be careful not to match Heads Star Thru
    '(head|side)start(?!hr).*'.ri: (name) => HeadsSidesStart(name),
    'horseshoeturn'.ri: (_) => HorseshoeTurn(),

    'ignore.+'.ri: (name) => Ignore(name),
    'center(2|4|6)'.ri: (name) => Insides(name),
    'in(ner|sides?)(2|4|6)?'.ri: (name) => Insides(name),

    'jaywalk'.ri: (_) => Jaywalk(),

    'lead'.ri: (name) => Leaders(name),
    //  Little needs two regexes
    //  to handle both <something> Little and Little <something>
    '(scootand)?(outside|point)?(out|in|left|right|(go)?(forward|asyouare))?little'.ri:
        (name) => Little(name),
    '(scootand)?little(outside|point)(in|out|left|right|(go)?(forward|asyouare))?'.ri:
        (name) => Little(name),

    'makemagic'.ri: (_) => MakeMagic(),
    'minibusybut.+'.ri: (name) => MiniBusyBut(name),

    'nothing'.ri: (_) => Nothing(),

    'O[A-Z0-9].+'.r: (name) => OFormation(name),
    '112'.ri: (name) => OneAndaHalf(name),
    'out(er|sides?)(2|4|6)?'.ri: (name) => Outsides(name),

    'partnertag'.ri: (_) => PartnerTag(),
    'pass(in|out)'.ri: (name) => PassInOut(name),
    '(left)?passthru'.ri: (name) => PassThru(name),
    'point'.ri: (_) => Points(),
    'promenadehome'.ri: (name) => PromenadeHome(name),
    'swing(your)?corner(and)?promenade(home)?'.ri: (name) => PromenadeHome(name),
    '(left)?pullby'.ri: (name) => PullBy(name),

    'quarter(in|out)'.ri: (name) => QuarterInOut(name),
    'and14more'.ri: (_) => QuarterMore(),
    '(left)?14tag'.ri: (name) => QuarterTag(name),

    'ramble'.ri: (_) => Ramble(),
    '(and)?roll'.ri: (name) => Roll(name),
    '(left|right)_rollto'.ri: (name) => RollTo(name),
    '(left_right)rolltoawave'.ri: (name) => RollToAWave(name),
    'run(left|right)?'.ri: (name) => Run(name),

    'samesex(es)?'.ri: (name) => SameSex(name),
    'scootandramble'.ri: (_) => ScootAndRamble(),
    'separate'.ri: (_) => Separate(),
    'side'.ri: (name) => Sides(name),
    '(left)?singlewheel'.ri: (name) => SingleWheel(name),
    'slide'.ri: (_) => Slide(),
    'slide(in|out|left|right)'.ri: (name) => SlideDir(name),
    'slidethru'.ri: (_) => SlideThru(),
    'slip'.ri: (_) => Slip(),
    'slither'.ri: (_) => Slither(),
    '(left)?spinthewindmill(left|right|in|out|forward)'.ri: (name) => SpinTheWindmill(name),
    'splitcirculate'.ri: (_) => SplitCirculate(),
    '(left)?splitsquarethru[2-7]'.ri: (name) => SplitSquareThru(name),
    '(and)?spread'.ri: (name) => Spread(name),
    'squaretheset'.ri: (_) => SquareTheSet(),
    '(left)?squarethru(1|2|3|4|5|6|7)?(toawave)?'.ri: (name) => SquareThru(name),
    'step'.ri: (_) => Step(),
    'sweep14'.ri: (_) => SweepAQuarter(),
    'swing'.ri: (_) => Swing(),

    'tagtheline'.ri: (_) => TagTheLine(),
    '(left)?34tag(theline)?'.r : (name) => ThreeQuartersTag(name),
    '(left)?touch'.ri: (name) => Touch(name),
    '(left)?touch14'.ri: (name) => TouchAQuarter(name),
    'trade'.ri: (_) => Trade(),
    'trail'.ri: (name) => Trailers(name),
    'transferand(.+)'.ri: (name) => TransferAnd(name),
    'triplestarthru'.ri: (_) => TripleStarThru(),
    'tripletrade'.ri: (_) => TripleTrade(),
    '(left)turnthru'.ri: (name) => TurnThru(name),
    '(go)?twice'.ri: (name) => Twice(name),
    '(left)?turnanddeal'.ri: (name) => TurnAndDeal(name),
    'u?turnback'.ri: (_) => TurnBack(),

    'verycenters'.ri: (_) => VeryCenters(),
    'veryends'.ri: (_) => VeryEnds(),

    'walkanddodge'.ri: (_) => WalkAndDodge('Walk and Dodge'),
    '${specifier}walk(and)?${specifier}dodge'.ri: (name) => WalkAndDodge(name),
    '$specifier${specifier}walk(and)?$specifier${specifier}dodge'.ri:
        (name) => WalkAndDodge(name),
    '(reverse)?wheelaround'.ri: (name) => WheelAround(name),
    '(and)?(the)?other?.+'.ri: (name) => While(name),
    'while(the)?(others?)?.+'.ri: (name) => While(name),
    '_windmill(in|out|left|right|forward)'.ri: (name) => WindmillX(name),

    'z[ai]g'.ri: (name) => Zig(name),
    'z[ai]gz[ai]g'.ri: (name) => ZigZag(name),
    'zing|zoom'.ri: (name) => Zoom(name)

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
