/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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


import 'a2/diamond_chain_thru.dart';
import 'c1/follow_thru.dart';
import 'c1/weave.dart';
import 'c2/cross_concentric_cycle_and_wheel.dart';
import 'c2/vertical.dart';
import 'common/grand.dart';
import 'common/select_location.dart';
import '../../extensions.dart';
import '../normalize_call.dart';
import 'a1/as_couples.dart';
import 'a1/as_couples_roll.dart';
import 'a1/beaus.dart';
import 'a1/belles.dart';
import 'a1/brace_thru.dart';
import 'a1/cast_a_shadow.dart';
import 'a1/chain_reaction.dart';
import 'a1/clover_and.dart';
import 'a1/cross.dart';
import 'a1/cross_over_circulate.dart';
import 'a1/double_cross.dart';
import 'a1/horseshoe_turn.dart';
import 'a1/mix.dart';
import 'a1/partner_tag.dart';
import 'a1/pass_in_out.dart';
import 'a1/quarter_in_out.dart';
import 'a1/quarter_thru.dart';
import 'a1/roll_to_a_wave.dart';
import 'a1/six_two_acey_deucey.dart';
import 'a1/split_square_chain_thru.dart';
import 'a1/split_square_thru.dart';
import 'a1/square_chain_thru.dart';
import 'a1/swap_around.dart';
import 'a1/swing_and_mix.dart';
import 'a1/triple_star_thru.dart';
import 'a1/triple_trade.dart';
import 'a1/turn_and_deal.dart';
import 'a2/all_eight.dart';
import 'a2/mini_busy.dart';
import 'a2/motivate.dart';
import 'a2/pass_and_roll.dart';
import 'a2/remake.dart';
import 'a2/scoot_and_weave.dart';
import 'a2/scoot_chain_thru.dart';
import 'a2/single_wheel.dart';
import 'a2/slide.dart';
import 'a2/slip.dart';
import 'a2/slither.dart';
import 'a2/spin_the_windmill.dart';
import 'a2/split_counter_rotate.dart';
import 'a2/swing.dart';
import 'a2/transfer_and.dart';
import 'a2/zig.dart';
import 'a2/zig_zag.dart';
import 'b1/allemande_left.dart';
import 'b1/around_to_a_line.dart';
import 'b1/bend_the_line.dart';
import 'b1/california_twirl.dart';
import 'b1/chain.dart';
import 'b1/chain_down_the_line.dart';
import 'b1/circulate.dart';
import 'b1/courtesy_turn.dart';
import 'b1/dive_thru.dart';
import 'b1/dosado.dart';
import 'b1/face.dart';
import 'b1/grand_square.dart';
import 'b1/half_sashay.dart';
import 'b1/pass_thru.dart';
import 'b1/pull_by.dart';
import 'b1/right_and_left_thru.dart';
import 'b1/rollaway.dart';
import 'b1/separate.dart';
import 'b1/split_circulate.dart';
import 'b1/split_two.dart';
import 'b1/square_thru.dart';
import 'b1/star_thru.dart';
import 'b1/step_thru.dart';
import 'b1/turn_back.dart';
import 'b2/balance.dart';
import 'b2/box_the_gnat.dart';
import 'b2/cross_run.dart';
import 'b2/pass_the_ocean.dart';
import 'b2/pass_the_sea.dart';
import 'b2/run.dart';
import 'b2/sweep_a_quarter.dart';
import 'b2/swing_thru.dart';
import 'b2/touch.dart';
import 'b2/touch_a_quarter.dart';
import 'b2/trade.dart';
import 'b2/wheel_around.dart';
import 'b2/zoom.dart';
import 'c1/alter_the_wave.dart';
import 'c1/anything_chain_thru.dart';
import 'c1/block_formation.dart';
import 'c1/but.dart';
import 'c1/butterfly.dart';
import 'c1/cast_back.dart';
import 'c1/circle_by.dart';
import 'c1/concentric.dart';
import 'c1/counter_rotate.dart';
import 'c1/cross_chain_thru.dart';
import 'c1/dixie_diamond.dart';
import 'c1/finish.dart';
import 'c1/flip_back.dart';
import 'c1/ignore.dart';
import 'c1/interrupt.dart';
import 'c1/jaywalk.dart';
import 'c1/linear_action.dart';
import 'c1/little.dart';
import 'c1/magic_transfer_and.dart';
import 'c1/make_magic.dart';
import 'c1/o_formation.dart';
import 'c1/pass_the_axle.dart';
import 'c1/percolate.dart';
import 'c1/phantom.dart';
import 'c1/plenty.dart';
import 'c1/ramble.dart';
import 'c1/regroup.dart';
import 'c1/relay_the_top.dart';
import 'c1/replace.dart';
import 'c1/reverse_explode.dart';
import 'c1/rotary_spin.dart';
import 'c1/rotate.dart';
import 'c1/scoot_and_plenty.dart';
import 'c1/scoot_and_ramble.dart';
import 'c1/siamese.dart';
import 'c1/skip.dart';
import 'c1/split_dixie_diamond.dart';
import 'c1/split_dixie_style.dart';
import 'c1/split_recycle.dart';
import 'c1/split_square_chain_the_top.dart';
import 'c1/square_chain_the_top.dart';
import 'c1/square_the_bases.dart';
import 'c1/squeeze.dart';
import 'c1/squeeze_the_galaxy.dart';
import 'c1/squeeze_the_hourglass.dart';
import 'c1/start.dart';
import 'c1/stretch.dart';
import 'c1/substitute.dart';
import 'c1/swing_and_circle.dart';
import 'c1/swing_the_fractions.dart';
import 'c1/switch_the_line.dart';
import 'c1/tag_back.dart';
import 'c1/tally_ho.dart';
import 'c1/tandem.dart';
import 'c1/three_by_two_acey_deucey.dart';
import 'c1/to_a_wave.dart';
import 'c1/triangle_circulate.dart';
import 'c1/triple_formation.dart';
import 'c1/twist_anything.dart';
import 'c1/vertical_tag.dart';
import 'c1/vertical_tag_back.dart';
import 'c1/wheel_and.dart';
import 'c1/with_the_flow.dart';
import 'c2/alter_and_circulate.dart';
import 'c2/anything.dart';
import 'c2/bounce.dart';
import 'c2/catch.dart';
import 'c2/checkpoint.dart';
import 'c2/chisel_thru.dart';
import 'c2/crazy.dart';
import 'c2/cross_and_wheel.dart';
import 'c2/cross_concentric.dart';
import 'c2/cross_ramble.dart';
import 'c2/cross_trade_and_wheel.dart';
import 'c2/detour.dart';
import 'c2/dodge.dart';
import 'c2/fascinating.dart';
import 'c2/flip_your_neighbor.dart';
import 'c2/grand_cross_trade_and_wheel.dart';
import 'c2/grand_single_cross_and_wheel.dart';
import 'c2/grand_single_cross_trade_and_wheel.dart';
import 'c2/half_the_k.dart';
import 'c2/hocus_pocus.dart';
import 'c2/hubs_trade.dart';
import 'c2/kick_off.dart';
import 'c2/lines_anything_thru.dart';
import 'c2/loop.dart';
import 'c2/peel_to_a_diamond.dart';
import 'c2/relocate.dart';
import 'c2/reshape.dart';
import 'c2/ripple.dart';
import 'c2/rotary.dart';
import 'c2/scoot_and_cross_ramble.dart';
import 'c2/shazam.dart';
import 'c2/single_bounce.dart';
import 'c2/single_cross_and_wheel.dart';
import 'c2/single_cross_trade_and_wheel.dart';
import 'c2/stack_the_line.dart';
import 'c2/stagger.dart';
import 'c2/tag_your_neighbor.dart';
import 'c2/the_k.dart';
import 'c2/trail_to_a_diamond.dart';
import 'c2/truck.dart';
import 'c2/wheel_the_ocean.dart';
import 'c2/zip_code.dart';
import 'c3a/breaker.dart';
import 'c3a/couple_up.dart';
import 'c3a/own_the_dancers.dart';
import 'c3a/patch.dart';
import 'c3a/quarter_mix.dart';
import 'c3a/snap_the_lock.dart';
import 'c3a/spin_the_pulley.dart';
import 'c3a/touch_by.dart';
import 'c3b/cast_and_relay.dart';
import 'c3b/change_the_centers.dart';
import 'c3b/reverse_order.dart';
import 'c3b/sidetrack.dart';
import 'call.dart';
import 'common/adjust.dart';
import 'common/and.dart';
import 'common/back_away.dart';
import 'common/boys.dart';
import 'common/center_six.dart';
import 'common/center_wave_of_four.dart';
import 'common/centers.dart';
import 'common/couples.dart';
import 'common/do_one_part.dart';
import 'common/do_your_part.dart';
import 'common/ends.dart';
import 'common/everyone.dart';
import 'common/except.dart';
import 'common/facing_dancers.dart';
import 'common/facing_in.dart';
import 'common/facing_out.dart';
import 'common/facing_the_caller.dart';
import 'common/first.dart';
import 'common/flip.dart';
import 'common/fraction.dart';
import 'common/girls.dart';
import 'common/heads.dart';
import 'common/in_the_center.dart';
import 'common/insides.dart';
import 'common/leaders.dart';
import 'common/left.dart';
import 'common/nobody.dart';
import 'common/nothing.dart';
import 'common/one_and_a_half.dart';
import 'common/one_couple.dart';
import 'common/outsides.dart';
import 'common/promenade_home.dart';
import 'common/quarter_more.dart';
import 'common/reverse.dart';
import 'common/same_sex.dart';
import 'common/select_diamond.dart';
import 'common/sides.dart';
import 'common/single.dart';
import 'common/slide_dir.dart';
import 'common/square_the_set.dart';
import 'common/step.dart';
import 'common/those_who_can.dart';
import 'common/trailers.dart';
import 'common/turn_the_star.dart';
import 'common/twice.dart';
import 'common/very_centers.dart';
import 'common/very_ends.dart';
import 'common/wave_of_six.dart';
import 'common/waves.dart';
import 'common/while.dart';
import 'ms/cast_off_three_quarters.dart';
import 'ms/cross_fold.dart';
import 'ms/eight_chain.dart';
import 'ms/fold.dart';
import 'ms/half_tag.dart';
import 'ms/hinge.dart';
import 'ms/pass_to_the_center.dart';
import 'ms/quarter_tag.dart';
import 'ms/scoot_back.dart';
import 'ms/slide_thru.dart';
import 'ms/spin_chain_thru.dart';
import 'ms/spin_the_top.dart';
import 'ms/tag_the_line.dart';
import 'ms/three_quarters_tag.dart';
import 'ms/turn_thru.dart';
import 'ms/walk_and_dodge.dart';
import 'plus/acey_deucey.dart';
import 'plus/chase_right.dart';
import 'plus/coordinate.dart';
import 'plus/crossfire.dart';
import 'plus/diamond_circulate.dart';
import 'plus/double_scoot.dart';
import 'plus/explode.dart';
import 'plus/explode_the_wave.dart';
import 'plus/fan_the_top.dart';
import 'plus/linear_cycle.dart';
import 'plus/load_the_boat.dart';
import 'plus/peel_off.dart';
import 'plus/points.dart';
import 'plus/roll.dart';
import 'plus/spin_chain_and_exchange_the_gears.dart';
import 'plus/spin_chain_the_gears.dart';
import 'plus/spread.dart';
import 'set_debug_switches.dart';

abstract class CodedCall extends Call {

  CodedCall(String name) : super(name);

  static const specifier = '\\s*(?:boys?|girls?|beaus?|belles?|centers?|ends?|lead(?:er)?s?|trail(?:er)?s?|heads?|sides?|very ?centers?|every(?:one|body)|no(?:one|body))\\s*';

  static final Map<RegExp, CodedCall Function(String norm)> normCallMap = {
    'aceydeucey'.ri: (_) => AceyDeucey(),
    'adjust(to)?.*'.ri: (name) => Adjust(name),
    'all8(?!circulate)(?!recycle)'.ri: (name) => AllEight(name),
    'AllemandeLeft'.r: (name) => AllemandeLeft(name),
    'alterandcirculate'.ri: (_) => AlterAndCirculate(),
    'alterthewave'.ri: (name) => AlterTheWave(name),
    'and'.ri: (_) => And(),
    '.*(?<!(swing))andcircle(14|12|34)'.ri: (name) => AnythingAndCircle(name),
    'InterlockedDiamondChainThru'.r: (name) => AnythingChainThru(name),
    'around1andcomeintothemiddle'.ri: (_) =>
        AroundToALine('Around One and Come Into the Middle'),
    'around1toaline'.ri: (_) => AroundToALine('Around One to a Line'),
    'around2toaline'.ri: (_) => AroundToALine('Around Two to a Line'),
    'AsCouples(?!Roll).*'.r: (name) => AsCouples(name),
    'AsCouplesRoll'.r: (name) => AsCouplesRoll(name),

    'back(away|up)'.ri: (_) => BackAway(),
    'balance'.ri: (_) => Balance(),
    'beau'.ri: (_) => Beaus(),
    'belle'.ri: (_) => Belles(),
    'bendtheline'.ri: (_) => BendTheLine(),
    '(line|wave)of(6|8)(left)?(12)?tag(theline)?'.ri: (name) => BigLineTagTheLine(name),
    '(line|wave)of(6|8)(left)?turnanddeal'.ri: (name) => BigLineTurnAndDeal(name),
    '(inyour)?block.*'.ri: (name) => BlockFormation(name),
    'bounce(the)?($specifier)?'.ri: (name) => Bounce(name),
    'boy'.ri: (_) => Boys(),
    'boxthegnat'.ri: (_) => BoxTheGnat(),
    'bracethru'.ri: (_) => BraceThru(),
    'breaker(1|2|3)?'.ri: (name) => Breaker(name),
    '.*But(?![a-z]).*'.r: (name) => But(name),
    'butterfly.*'.ri: (name) => Butterfly(name),

    'californiatwirl'.ri: (_) => CaliforniaTwirl(),
    '(14|12|34)?castandrelay'.ri: (name) => CastAndRelay(name),
    'castashadow(center(go|cast)?34)?'.ri: (name) => CastAShadow(name),
    '(cross)?castback'.ri: (name) => CastBack(name),
    'castoff(14|12|34)'.ri: (name) => CastOffThreeQuarters(name),
    '(all4couples)?(left)?(split)?catch.*?(1|2|3|4)'.ri: (name) => Catch(name),
    'center'.ri: (_) => Centers(),
    'center6'.ri: (_) => CenterSix(),
    'center(line|wave)(of4)?'.ri: (name) => CenterWaveOfFour(name),
    'chain'.ri: (name) => Chain(name),
    'chaindowntheline'.ri: (name) => ChainDownTheLine(name),
    'chainreaction'.ri: (_) => ChainReaction(),
    'changethe(centers?|wave)'.ri: (name) => ChangeTheCenters(name),
    'chaseright'.ri: (name) => ChaseRight(name),
    'checkpoint((.+)by(.*))?'.ri: (name) => Checkpoint(name),
    'chiselthru'.ri: (_) => ChiselThru(),
    'circleby((14|12|34|nothing)and(14|12|34|nothing))?'.ri: (name) => CircleBy(name),
    'circleby(14|12|34|nothing)and(?!(14|12|34|nothing)).*'.ri: (name) => CircleBy(name),
    '(box)?circulate'.ri: (name) => Circulate(name),
    '(cross)?cloverand(\\w.*)'.ri: (name) => CloverAnd(name),
    'cloverleaf'.ri: (_) => Cloverleaf(),
    'concentric.*'.ri: (name) => Concentric(name),
    'coordinate'.ri: (_) => Coordinate(),
    'counterrotate'.ri: (_) => CounterRotate(),
    '(dancersin)?couples'.ri: (name) => Couples(name),
    'coupleup'.ri : (_) => CoupleUp(),
    'courtesyturn'.ri: (_) => CourtesyTurn(),
    '(14|12|34)?(reverse)?crazy.*'.ri: (name) => Crazy(name),
    'cross'.ri: (_) => Cross(),
    'crossandwheel'.ri: (name) => CrossAndWheel(name),
    'crosschain(thru|androll)'.ri: (name) => CrossChainThru(name),
    'crossconcentric'.ri: (name) => CrossConcentric(name),
    'crossconcentriccycleandwheel'.ri: (name) => CrossConcentricCycleAndWheel(name),
    'crossfire'.ri: (name) => Crossfire(name),
    'crossfold'.ri: (_) => CrossFold(),
    'crossovercirculate'.ri: (_) => CrossOverCirculate(),
    'crossramble'.ri: (_) => CrossRamble(),
    '($specifier)*crossrun'.ri: (name) => CrossRun(name),
    'crosstradeandwheel'.ri: (name) => CrossTradeAndWheel(name),

    'debug.*'.ri: (name) => SetDebugSwitch(name),
    'detour'.ri: (_) => Detour(),
    'diamondchainthru'.ri: (name) => DiamondChainThru(name),
    'diamondcirculate'.ri: (_) => DiamondCirculate(),
    'dixiediamond'.ri: (name) => DixieDiamond(name),
    'divethru'.ri: (name) => DiveThru(name),
    'dodge.*'.ri: (name) => Dodge(name),
    'dothe.+?part.+'.ri: (name) => DoOnePart(name),
    'dosado(toawave)?'.ri: (name) => Dosado(name),
    'doublecross'.ri: (_) => DoubleCross(),
    'doublescoot'.ri: (_) => DoubleScoot(),
    'doyourpart.*'.ri: (name) => DoYourPart(name),

    '8chain(1|2|3|4|5|6|7|thru)'.ri: (name) => EightChain(name),
    'end'.ri: (_) => Ends(),
    '(then)?every(one|body)'.ri: (name) => Everyone(name),
    'except(the)?$specifier'.ri: (name) => Except(name),
    'explode'.ri: (_) => Explode(),
    'explodethewave'.ri: (name) => ExplodeTheWave(name),

    'face(in|out|left|right|thecaller)'.ri: (name) => Face(name),
    'facing'.ri: (name) => FacingDancers(name),
    '(those|dancers)?facingin'.ri: (name) => FacingIn(name),
    '(those|dancers)?facingout'.ri: (name) => FacingOut(name),
    '(those|dancers)?facingthecaller'.ri: (name) => FacingTheCaller(name),
    'fanthetop'.ri: (name) => FanTheTop(name),
    'fascinating.*'.ri: (name) => Fascinating(name),
    'finish.*'.ri: (name) => Finish(name),
    'first(1|2|3)'.ri : (name) => First(name),
    'flip(in|out|left|right)?'.ri: (name) => Flip(name),
    'flipback'.ri: (_) => FlipBack(),
    'flipyour(criss)?(cross)?neighbor'.ri: (name) => FlipYourNeighbor(name),
    'fold'.ri: (_) => Fold(),
    'followthru'.ri: (name) => FollowThru(name),
    '\\d\\d'.ri: (name) => Fraction(name),

    'girl|ladies|lady'.ri: (_) => Girls(),
    'grand'.ri: (name) => Grand(name),
    'grandcrosstradeandwheel'.ri: (name) => GrandCrossTradeAndWheel(name),
    'grandsinglecrossandwheel'.ri: (name) => GrandSingleCrossAndWheel(name),
    'grandsinglecrosstradeandwheel'.ri: (name) => GrandSingleCrossTradeAndWheel(name),
    '((head|side)face)?grandsquare((\\d+)steps)?'.ri: (name) => GrandSquare(name),

    '12sashay'.ri: (name) => HalfSashay(name),
    '12tag'.ri: (name) => HalfTag(name),
    'halfthek'.ri: (_) => HalfTheK(),
    'head'.ri: (name) => Heads(name),
    '(single|partner)?hinge'.ri: (name) => Hinge(name),
    '(magic)?hocuspocus'.ri: (name) => HocusPocus(name),
    'horseshoeturn'.ri: (_) => HorseshoeTurn(),
    '(hubs|rims)trade.*'.ri: (name) => HubsTrade(name),

    'ignore.*'.ri: (name) => Ignore(name),
    'individually'.ri: (_) => Nothing('Individually'),
    'center(2|4|6)'.ri: (name) => Insides(name),
    'in(ner|sides?)(2|4|6)?'.ri: (name) => Insides(name),
    '.*interrupt.*'.ri: (name) => Interrupt(name),
    'inthecenter'.ri: (_) => InTheCenter(),

    'jaywalk'.ri: (_) => Jaywalk(),

    '(cross)?kickoff'.ri: (name) => KickOff(name),

    'last(1|2|3)'.ri: (name) => Last(name),
    'lead(er)?s?'.ri: (name) => Leaders(name),
    'left'.ri: (name) => Left(name),
    'likeacoupleup'.ri: (_) => LikeACoupleUp(),
    'linearaction'.ri: (_) => LinearAction(),
    'linearcycle'.ri: (name) => LinearCycle(name),
    'Lines.*Thru'.ri: (name) => LinesAnythingThru(name),
    //  Little needs two regexes
    //  to handle both <something> Little and Little <something>
    '(scootand)?(outside|point)?(out|in|left|right|(go)?(forward|asyouare))?little'.ri:
        (name) => Little(name),
    '(scootand)?little(outside|point)(in|out|left|right|(go)?(forward|asyouare))?'.ri:
        (name) => Little(name),
    'loadtheboat'.ri: (_) => LoadTheBoat(),
    '(left|right|in|out)?loop(0|1|2|3)?'.ri: (name) => Loop(name),

    'magictransferand.+'.ri: (name) => MagicTransferAnd(name),
    'makemagic'.ri: (_) => MakeMagic(),
    'minibusy'.ri: (_) => MiniBusy(),
    'mix'.ri: (_) => Mix(),
    'motivate'.ri: (_) => Motivate(),

    'no(body|one)'.ri: (_) => Nobody(),
    'nothing'.ri: (_) => Nothing('Nothing'),

    'O[A-Z0-9].+'.r: (name) => OFormation(name),
    '112'.ri: (name) => OneAndaHalf(name),
    'couples?(1|2|3|4)((and)?(2|3|4))*'.ri: (name) => OneCouple(name),
    'out(er|sides?)(2|4|6)?'.ri: (name) => Outsides(name),
    'ownthe.*'.ri: (name) => OwnTheDancers(name),

    'partnertag'.ri: (_) => PartnerTag(),
    '(left)?passandroll(your(cross)?neighbor)?'.ri: (name) => PassAndRoll(name),
    'pass(in|out)'.ri: (name) => PassInOut(name),
    'passtheaxle'.ri: (name) => PassTheAxle(name),
    'passtheocean'.ri: (_) => PassTheOcean(),
    'passthesea'.ri: (_) => PassTheSea(),
    '(left)?passthru'.ri: (name) => PassThru(name),
    'passtothecenter'.ri: (name) => PassToTheCenter(name),
    'patch(the)?($specifier)?'.ri: (name) => Patch(name),
    'peel(off|left|right)'.ri: (name) => PeelOff(name),
    'peeltoadiamond'.ri: (name) => PeelToADiamond(name),
    'percolate'.ri: (name) => Percolate(name),
    'phantom.+'.ri: (name) => Phantom(name),
    'plenty'.ri: (name) => Plenty(name),
    'point'.ri: (_) => Points(),
    'promenade(home)?'.ri: (name) => PromenadeHome(name),
    'swing(your)?corner(and)?promenade(home)?'.ri: (name) => PromenadeHome(name),
    'promenade(home)?(with)?(your)?corner'.ri: (name) => PromenadeHome(name),
    '(left|right)?pullby'.ri: (name) => PullBy(name),

    '14(in|out)'.ri: (name) => QuarterInOut(name),
    'anda?14more'.ri: (_) => QuarterMore(),
    '(left)?14tag'.ri: (name) => QuarterTag(name),
    '(grand)?(left)?(14|34)mix'.ri: (name) => QuarterMix(name),
    '(14|34)thru'.ri: (name) => QuarterThru(name),

    'ramble'.ri: (_) => Ramble(),
    'regroup'.ri: (name) => Regroup(name),
    'relocate(.*)'.ri: (name) => Relocate(name),
    'relaythetop'.ri: (name) => RelayTheTop(name),
    'remake'.ri: (name) => Remake(name),
    '.*(but)?replace.*'.ri: (name) => Replace(name),
    '((inside|outside|inpoint|outpoint|tandembased|wavebased)?triangles?)?reshape(thetriangle)?'.ri:
        (name) => Reshape(name),
    'reverse'.ri: (name) => Reverse(name),
    'reverseexplode'.ri: (name) => ReverseExplode(name),
    'reverseorder'.ri: (name) => ReverseOrder(name),
    'rightandleftthru'.ri: (name) => RightAndLeftThru(name),
    '(left|right)?ripple.*'.ri: (name) => Ripple(name),
    '(and)?roll'.ri: (name) => Roll(name),
    'rollaway'.ri : (name) => Rollaway(name),
    '(left|right)rolltoawave'.ri: (name) => RollToAWave(name),
    'rotary'.ri: (name) => Rotary(name),
    '(left)?rotaryspin'.ri: (name) => RotarySpin(name),
    'rotate(14|12|34)?'.ri: (name) => Rotate(name),
    'run(left|right)?'.ri: (name) => Run(name),

    'samesex(es)?.+'.ri: (name) => SameSex(name),
    'scootandcrossramble'.ri: (name) => ScootAndCrossRamble(name),
    'scootandplenty'.ri: (name) => ScootAndPlenty(name),
    'scootandramble'.ri: (name) => ScootAndRamble(name),
    'scootandweave'.ri: (name) => ScootAndWeave(name),
    'scootback'.ri: (name) => ScootBack(name),
    //  Accept Scoot Chain Thru Centers so user can say e.g.
    //  Centers Skip the 3rd Part
    '(scatter)?scootchainthru(center)?'.ri: (name) => ScootChainThru(name),
    //  Special hack for Centers Star Thru, otherwise it gets parsed
    //  as Centers Star
    'centerstarthru'.ri: (name) => CentersStarThru(name),
    '(center|inside|middle|out(er|side))(diamond|star)'.ri: (name) => SelectDiamond(name),
    '(near|far|left|right)(box|line|wave|diamond|star|\\d)'.ri:
        (name) => SelectLocation(name),
    'separate'.ri: (name) => Separate(name),
    'shazam'.ri: (name) => Shazam(name),
    'siamese.*'.ri: (name) => Siamese(name),
    'side'.ri: (name) => Sides(name),
    '(single)?(split)?sidetrack'.ri: (name) => Sidetrack(name),
    'single'.ri: (name) => Single(name),
    'singlebounce(the)?($specifier)?'.ri: (name) => SingleBounce(name),
    'singlecrossandwheel'.ri: (name) => SingleCrossAndWheel(name),
    'singlecrosstradeandwheel'.ri: (name) => SingleCrossTradeAndWheel(name),
    'singlewheel'.ri: (name) => SingleWheel(name),
    '62aceydeucey'.ri: (name) => SixTwoAceyDeucey(name),
    '(but)?($specifier)?(skip|delete).+parts?'.ri: (name) => Skip(name),
    'slide'.ri: (name) => Slide(name),
    'slide(in|out|left|right)'.ri: (name) => SlideDir(name),
    'slidethru'.ri: (name) => SlideThru(name),
    'slip'.ri: (name) => Slip(name),
    'slither'.ri: (name) => Slither(name),
    'spinchainthegears'.ri: (name) => SpinChainTheGears(name),
    'snapthelock'.ri: (name) => SnapTheLock(name),
    'spinchainandexchangethegears'.ri: (name) => SpinChainAndExchangeTheGears(name),
    'spinchainthru'.ri: (name) => SpinChainThru(name),
    '(spin)?thepulley'.ri: (name) => SpinThePulley(name),
    'spinthetop'.ri: (name) => SpinTheTop(name),
    '(.+)thewindmill(left|right|in|out|forward)'.ri: (name) => SpinTheWindmill(name),
    'splitcirculate'.ri: (name) => SplitCirculate(name),
    'splitcounterrotate'.ri: (name) => SplitCounterRotate(name),
    'splitdixiediamond'.ri: (name) => SplitDixieDiamond(name),
    'splitdixiestyle(toawave)?'.ri: (name) => SplitDixieStyle(name),
    'splitrecycle'.ri: (name) => SplitRecycle(name),
    'splitsquarechainthru'.ri: (name) => SplitSquareChainThru(name),
    'splitsquarechainthetop'.ri: (name) => SplitSquareChainTheTop(name),
    'splitsquarethru[2-7]?'.ri: (name) => SplitSquareThru(name),
    'split(2|theoutsides?(couple))?'.ri: (name) => SplitTwo(name),
    '(and)?spread'.ri: (name) => Spread(name),
    'squarechainthetop'.ri: (name) => SquareChainTheTop(name),
    'squarechainthru'.ri: (name) => SquareChainThru(name),
    'squarethebases'.ri: (_) => SquareTheBases(),
    'squaretheset'.ri: (_) => SquareTheSet(),
    'squeeze(the(butterfly|o))?'.ri: (name) => Squeeze(name),
    'squeezethegalaxy'.ri: (name) => SqueezeTheGalaxy(name),
    'squeezethehourglass'.ri: (name) => SqueezeTheHourglass(name),
    '(left)?squarethru(1|2|3|4|5|6|7)?(toawave)?'.ri: (name) => SquareThru(name),
    '(left)?squarethruon(2|3|4|5|6)(.+)'.ri: (name) => SquareThru(name),
    '(left)?stacktheline'.ri: (name) => StackTheLine(name),
    'stagger.*'.ri: (name) => Stagger(name),
    //  Make sure Start does not match Star
    'Start.*'.r: (name) => Start(name),
    '(_left)?starthru'.ri: (name) => StarThru(name),
    'step(ahead)?'.ri: (name) => Step(name),
    'pressahead'.ri: (name) => Step(name),
    'movein(tothecenter)?'.ri: (name) => Step(name),
    'stepthru'.ri: (name) => StepThru(name),
    'steptoacompact(lefthand)?wave'.ri: (name) => StepToACompactWave(name),
    //  Stretch not Stretched
    'stretch(?!ed)'.ri: (name) => Stretch(name),
    '(lateral)?substitute'.ri: (name) => Substitute(name),
    'swap'.ri: (name) => SwapAround(name),
    'sweep14'.ri: (name) => SweepAQuarter(name),
    'swing'.ri: (name) => Swing(name),
    'swingandcircle(14|12|34)'.ri: (name) => SwingAndCircle(name),
    'swingandmix'.ri: (name) => SwingAndMix(name),
    '(left)?swingthefractions'.ri: (name) => SwingTheFractions(name),
    '(grand)?(left)?swingthru'.ri: (name) => SwingThru(name),
    'switch(theline)?'.ri: (name) => SwitchTheLine(name),

    '(left)?tagback(toawave)?'.ri: (name) => TagBack(name),
    '(left)?tagtheline'.ri: (name) => TagTheLine(name),
    '(left|vertical){0,2}tagyour((criss)?cross)?neighbor'.ri:
        (name) => TagYourNeighbor(name),
    'tallyho'.ri: (name) => TallyHo(name),
    //  Tandem concept not tandem-based triangle
    'tandem(?!based).+'.ri: (name) => Tandem(name),
    'theaxle'.ri: (name) => TheAxle(name),
    'thek'.ri: (name) => TheK(name),
    'thosewhocan'.ri: (name) => ThoseWhoCan(name),
    '32aceydeucey'.ri: (name) => ThreeByTwoAceyDeucey(name),
    '(left)?34tag(theline)?'.ri : (name) => ThreeQuartersTag(name),
    'toawave'.ri: (name) => ToAWave(name),
    '(left)?touch'.ri: (name) => Touch(name),
    'steptoa(lefthand)?wave'.ri: (name) => Touch(name),
    '(left)?touch(14|12|34)'.ri: (name) => TouchAQuarter(name),
    'touchby.*'.ri: (name) => TouchBy(name),
    '(partner)?trade(?!thewave)'.ri: (name) => Trade(name),
    'trail'.ri: (name) => Trailers(name),
    'trailtoadiamond'.ri: (name) => TrailToADiamond(name),
    'transferand.*'.ri: (name) => TransferAnd(name),
    '(inside|outside|inpoint|outpoint|tandembased|wavebased)?trianglecirculate'.ri:
        (name) => TriangleCirculate(name),
    '(inside|outside|inpoint|outpoint|tandembased|wavebased)?triangle'.ri:
        (name) => SelectTriangle(name),
    'triplebox.*'.ri: (name) => TripleBox(name),
    'triple(lines?|waves?|columns?).*'.ri: (name) => TripleLine(name),
    '(double|triple)starthru'.ri: (name) => TripleStarThru(name),
    'tripletrade'.ri: (name) => TripleTrade(name),
    'truck'.ri: (name) => Truck(name),
    '(left)?turnthru'.ri: (name) => TurnThru(name),
    '(left)?turnanddeal'.ri: (name) => TurnAndDeal(name),
    'u?turnback'.ri: (name) => TurnBack(name),
    '.*turnthestars?(14|12|34|afullturn)'.ri: (name) => TurnTheStar(name),
    '.*donotturnthestars?'.ri: (name) => TurnTheStar(name),
    '(go)?twice'.ri: (name) => Twice(name),
    'twist(theline|and.+)'.ri: (name) => TwistAnything(name),

    'vertical'.ri: (name) => Vertical(name),
    '(left)?vertical(left)?(14|12|34)?tag'.ri: (name) => VerticalTag(name),
    '(left)?verticaltagback(toawave)?'.ri: (name) => VerticalTagBack(name),
    'verycenter'.ri: (name) => VeryCenters(name),
    'veryend'.ri: (name) => VeryEnds(name),

    'walkanddodge'.ri: (name) => WalkAndDodge(name),
    '${specifier}walk(and)?${specifier}dodge'.ri: (name) => WalkAndDodge(name),
    '$specifier${specifier}walk(and)?$specifier${specifier}dodge'.ri:
        (name) => WalkAndDodge(name),
    '(wave|line)of6'.ri: (name) => WaveOfSix(name),
    '(dancersin)?waves?(dancers)?'.ri: (name) => Waves(name),
    'weave'.ri: (name) => Weave(name),
    'wheeland(?!deal)'.ri: (name) => WheelAnd(name),
     'wheelaround'.ri: (name) => WheelAround(name),
    '(reverse)?(14|34)?(reverse)?wheelthe(ocean|sea)'.ri: (name) => WheelTheOcean(name),
    '(and)?(the)?others?.+'.ri: (name) => While(name),
    'while(the)?(others?)?.+'.ri: (name) => While(name),
    '_windmill(in|out|left|right|forward)'.ri: (name) => WindmillX(name),
    'withtheflow'.ri: (name) => WithTheFlow(name),

    'z[ai]g'.ri: (name) => Zig(name),
    'z[ai]gz[ai]g'.ri: (name) => ZigZag(name),
    'zipcode\\d'.ri: (name) => ZipCode(name),
    'zing|zoom'.ri: (name) => Zoom(name)

  };

  static final Map<RegExp, CodedCall Function(String norm)> normCallMap2 = {
    //  Anything Motivate does not include Start or Finish Motivate
    //  and should not be "(some call) and Motivate"
    //  Anything Couple Up does not include Like A Couple Up
    '.+(?<!(start|finish|likea|part|and|$specifier))(motivate|coordinate|coupleup|percolate|perkup)'.ri: (name) => Anything(name),
    //  Anything Chain Thru should not match Square Chain Thru or others
    '.*(?<!(cross|startdiamond|8|peel|scatter|scoot|spin|square|swing|tag))chainthru'.ri:
        (name) => AnythingChainThru(name),
  };

  static CodedCall? fromName(String name) {
    var norm = normalizeCall(name);
    //  Some words are high-level splitters
    //  Don't accept any calls with these words in the middle
    if (norm.matches('.+(Individually|While).*'.r)) {
      return null;
    }

    for (var r in normCallMap.keys) {
      if (norm.matches(r)) {
        return normCallMap[r]!.call(name);
      }
    }
    for (var r in normCallMap2.keys) {
      if (norm.matches(r)) {
        return normCallMap2[r]!.call(name);
      }
    }
    return null;
  }

}
