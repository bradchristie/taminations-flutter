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
import 'a2/diamond_chain_thru.dart';
import 'a2/in_roll_circulate.dart';
import 'a2/mini_busy.dart';
import 'a2/motivate.dart';
import 'a2/out_roll_circulate.dart';
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
import 'b1/single_circle.dart';
import 'b1/split_circulate.dart';
import 'b1/split_two.dart';
import 'b1/square_thru.dart';
import 'b1/star_thru.dart';
import 'b1/step_thru.dart';
import 'b1/turn_back.dart';
import 'b1/weave_the_ring.dart';
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
import 'c1/follow_thru.dart';
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
import 'c1/prefer.dart';
import 'c1/ramble.dart';
import 'c1/regroup.dart';
import 'c1/relay_the_top.dart';
import 'c1/replace.dart';
import 'c1/reverse_explode.dart';
import 'c1/rotary_spin.dart';
import 'c1/rotate.dart';
import 'c1/scatter_scoot.dart';
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
import 'c1/step_and_fold.dart';
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
import 'c1/weave.dart';
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
import 'c2/cross_concentric_cycle_and_wheel.dart';
import 'c2/cross_ramble.dart';
import 'c2/cross_trade_and_wheel.dart';
import 'c2/detour.dart';
import 'c2/dodge.dart';
import 'c2/fascinating.dart';
import 'c2/flip_your_neighbor.dart';
import 'c2/half_the_k.dart';
import 'c2/hocus_pocus.dart';
import 'c2/hubs_trade.dart';
import 'c2/kick_off.dart';
import 'c2/lines_anything_thru.dart';
import 'c2/loop.dart';
import 'c2/peel_to_a_diamond.dart';
import 'c2/perk_up.dart';
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
import 'c2/vertical.dart';
import 'c2/wheel_the_ocean.dart';
import 'c2/zip_code.dart';
import 'c3a/breaker.dart';
import 'c3a/choice.dart';
import 'c3a/couple_up.dart';
import 'c3a/delight_dilemma.dart';
import 'c3a/eight_by_anything.dart';
import 'c3a/hop.dart';
import 'c3a/own_the_dancers.dart';
import 'c3a/patch.dart';
import 'c3a/quarter_mix.dart';
import 'c3a/recoil.dart';
import 'c3a/snap_the_lock.dart';
import 'c3a/spin_the_pulley.dart';
import 'c3a/touch_by.dart';
import 'c3a/travel_thru.dart';
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
import 'common/double_selector.dart';
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
import 'common/grand.dart';
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
import 'common/select_location.dart';
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
import 'plus/single_circle_to_a_wave.dart';
import 'plus/spin_chain_and_exchange_the_gears.dart';
import 'plus/spin_chain_the_gears.dart';
import 'plus/spread.dart';
import 'set_debug_switches.dart';

abstract class CodedCall extends Call {

  CodedCall(super.name);

  static const specifier =
      '\\s*(?:Boys?|Girls?|Beaus?|Belles?|Center\\d?|Ends?|'
      'Lead(?:er)?s?|Trail(?:er)?s?|Heads?|Sides?|Very ?Centers?|'
      'Every(?:one|body)|No(?:one|body)|'
      'Outer\\d|Outside|'
      '(?:(?:Near|Far|Left|Right)(?:Box|Line|Wave|Diamond|Star|\\d)))\\s*';

  static final Map<RegExp, CodedCall Function(String norm)> normCallMap = {
    'AceyDeucey'.ri: (name) => AceyDeucey(name),
    'Adjust(to)?.*'.ri: (name) => Adjust(name),
    'All8(?!Circulate)(?!Recycle)'.ri: (name) => AllEight(name),
    'AllemandeLeft'.ri: (name) => AllemandeLeft(name),
    'AlterandCirculate'.ri: (name) => AlterAndCirculate(name),
    'AltertheWave'.ri: (name) => AlterTheWave(name),
    'and'.ri: (name) => And(name),
    '.*(?<!(Swing))andCircle(14|12|34)'.ri: (name) => AnythingAndCircle(name),
    'InterlockedDiamondChainThru'.ri: (name) => AnythingChainThru(name),
    'Around1andComeIntotheMiddle'.ri: (name) => AroundToALine(name),
    'Around1toaLine'.ri: (name) => AroundToALine(name),
    'Around2toaLine'.ri: (name) => AroundToALine(name),
    'AsCouples(?!Roll).*'.ri: (name) => AsCouples(name),
    'AsCouplesRoll'.ri: (name) => AsCouplesRoll(name),

    'Back(Away|Up)'.ri: (name) => BackAway(name),
    'Balance'.ri: (name) => Balance(name),
    'Beau'.ri: (name) => Beaus(name),
    'Belle'.ri: (name) => Belles(name),
    'BendtheLine'.ri: (name) => BendTheLine(name),
    '(Line|Wave)of(6|8)(Left)?(12)?Tag(theLine)?'.ri: (name) => BigLineTagTheLine(name),
    '(Line|Wave)of(6|8)(Left)?TurnandDeal'.ri: (name) => BigLineTurnAndDeal(name),
    '(InYour)?Block.*'.ri: (name) => BlockFormation(name),
    'Bounce(the)?($specifier)?'.ri: (name) => Bounce(name),
    'Boy'.ri: (name) => Boys(name),
    'BoxCounterRotate(14|12|34)'.ri: (name) => BoxCounterRotateFraction(name),
    'BoxtheGnat'.ri: (name) => BoxTheGnat(name),
    'BraceThru'.ri: (name) => BraceThru(name),
    'Breaker(1|2|3)?'.ri: (name) => Breaker(name),
    'But(?![a-z]).*'.r: (name) => But(name),
    'Butterfly.*'.ri: (name) => Butterfly(name),
    'CaliforniaTwirl'.ri: (name) => CaliforniaTwirl(name),
    '(14|12|34)?CastandRelay'.ri: (name) => CastAndRelay(name),
    'CastaShadow(Center(Go|Cast)?34)?'.ri: (name) => CastAShadow(name),
    '(Cross)?CastBack'.ri: (name) => CastBack(name),
    'CastOff(14|12|34)'.ri: (name) => CastOffThreeQuarters(name),
    '(All4Couples)?(Left)?(Split)?Catch.*?(1|2|3|4)'.ri: (name) => Catch(name),
    'Center'.ri: (name) => Centers(name),
    'Center6'.ri: (name) => CenterSix(name),
    'Center(Line|Wave)(of4)?'.ri: (name) => CenterWaveOfFour(name),
    'Chain'.ri: (name) => Chain(name),
    'ChainDowntheLine'.ri: (name) => ChainDownTheLine(name),
    'ChainReaction'.ri: (name) => ChainReaction(name),
    'Changethe(Centers?|Wave)'.ri: (name) => ChangeTheCenters(name),
    'ChaseRight'.ri: (name) => ChaseRight(name),
    'Checkpoint((.+)By(.*))?'.ri: (name) => Checkpoint(name),
    'ChiselThru'.ri: (name) => ChiselThru(name),
    'Choice'.ri: (name) => Choice(name),
    'CircleBy((14|12|34|Nothing)and(14|12|34|Nothing))?'.ri: (name) => CircleBy(name),
    'CircleBy(14|12|34|Nothing)and(?!(14|12|34|Nothing)).*'.ri: (name) => CircleBy(name),
    '(Box)?Circulate'.ri: (name) => Circulate(name),
    '(Cross)?Cloverand(\\w.*)'.ri: (name) => CloverAnd(name),
    'Cloverleaf'.ri: (name) => Cloverleaf(name),
    'Concentric'.ri: (name) => Concentric(name),
    'Coordinate'.ri: (name) => Coordinate(name),
    'CounterRotate'.ri: (name) => CounterRotate(name),
    '(DancersIn)?Couples'.ri: (name) => Couples(name),
    'CoupleUp'.r : (name) => CoupleUp(name),
    'CourtesyTurn'.ri: (name) => CourtesyTurn(name),
    '(14|12|34)?(Reverse)?Crazy.*'.ri: (name) => Crazy(name),
    'Cross'.ri: (name) => Cross(name),
    'CrossandWheel'.ri: (name) => CrossAndWheel(name),
    'CrossChain(Thru|andRoll)'.ri: (name) => CrossChainThru(name),
    'CrossConcentric'.ri: (name) => CrossConcentric(name),
    'CrossConcentricCycleandWheel'.ri: (name) => CrossConcentricCycleAndWheel(name),
    'Crossfire'.ri: (name) => Crossfire(name),
    'CrossFold'.ri: (name) => CrossFold(name),
    'CrossOverCirculate'.ri: (name) => CrossOverCirculate(name),
    'CrossRamble'.ri: (name) => CrossRamble(name),
    '($specifier)+CrossRun'.ri: (name) => CrossRun(name),
    'CrossTradeandWheel'.ri: (name) => CrossTradeAndWheel(name),

    'Debug.*'.ri: (name) => SetDebugSwitch(name),
    'Delight|Dilemma'.ri: (name) => Delight_Dilemma(name),
    'Detour'.ri: (name) => Detour(name),
    'DiamondChainThru'.ri: (name) => DiamondChainThru(name),
    'DiamondCirculate'.ri: (name) => DiamondCirculate(name),
    'DixieDiamond'.ri: (name) => DixieDiamond(name),
    'DiveThru'.ri: (name) => DiveThru(name),
    'Dodge.*'.ri: (name) => Dodge(name),
    'Dothe.+?Part.+'.ri: (name) => DoOnePart(name),
    'Dosado(toaWave)?'.ri: (name) => Dosado(name),
    'DoubleCross'.ri: (name) => DoubleCross(name),
    'DoubleScoot'.ri: (name) => DoubleScoot(name),
    '($specifier)+and($specifier)+'.ri: (name) => DoubleSelector(name),
    'DoYourPart.*'.ri: (name) => DoYourPart(name),

    '8By.*'.ri: (name) => EightByAnything(name),
    '8Chain(1|2|3|4|5|6|7|Thru)'.ri: (name) => EightChain(name),
    'End'.ri: (name) => Ends(name),
    '(Then)?Every(one|body)'.ri: (name) => Everyone(name),
    'Except(the)?$specifier'.ri: (name) => Except(name),
    'Explode'.ri: (name) => Explode(name),
    'ExplodetheWave'.ri: (name) => ExplodeTheWave(name),

    'Face(In|Out|Left|Right|theCaller)'.ri: (name) => Face(name),
    'Facing'.ri: (name) => FacingDancers(name),
    '(Those|Dancers)?FacingIn'.ri: (name) => FacingIn(name),
    '(Those|Dancers)?FacingOut'.ri: (name) => FacingOut(name),
    '(Those|Dancers)?FacingtheCaller'.ri: (name) => FacingTheCaller(name),
    'FantheTop'.ri: (name) => FanTheTop(name),
    'Fascinating.*'.ri: (name) => Fascinating(name),
    'Finish.*'.ri: (name) => Finish(name),
    'First(1|2|3)'.r : (name) => First(name),
    'Flip(In|Out|Left|Right)?'.ri: (name) => Flip(name),
    'FlipBack'.ri: (name) => FlipBack(name),
    'FlipYour(Criss)?(Cross)?Neighbor'.ri: (name) => FlipYourNeighbor(name),
    'Fold'.ri: (name) => Fold(name),
    'FollowThru'.ri: (name) => FollowThru(name),
    '\\d\\d'.ri: (name) => Fraction(name),

    'Girl|Ladies|Lady'.ri: (name) => Girls(name),
    'Grand'.ri: (name) => Grand(name),
    '((Head|Side)Face)?GrandSquare((\\d+)Steps)?'.ri: (name) => GrandSquare(name),

    '12Sashay'.ri: (name) => HalfSashay(name),
    '12Tag'.ri: (name) => HalfTag(name),
    'HalftheK'.ri: (name) => HalfTheK(name),
    'Head'.ri: (name) => Heads(name),
    '(Single|Partner)?Hinge'.ri: (name) => Hinge(name),
    '(Magic)?HocusPocus'.ri: (name) => HocusPocus(name),
    'Hop'.ri: (name) => Hop(name),
    'HorseshoeTurn'.ri: (name) => HorseshoeTurn(name),
    '(Hubs|Rims)Trade.*'.ri: (name) => HubsTrade(name),

    'Ignore.*'.ri: (name) => Ignore(name),
    'Individually'.ri: (name) => Nothing(name),
    'InRollCirculate'.ri: (name) => InRollCirculate(name),
    'Center(2|4|6)'.ri: (name) => Insides(name),
    'In(ner|sides?)(2|4|6)?'.ri: (name) => Insides(name),
    'Interrupt.*'.ri: (name) => Interrupt(name),
    'IntheCenter'.ri: (name) => InTheCenter(name),

    'Jaywalk'.ri: (name) => Jaywalk(name),

    '(Cross)?KickOff'.ri: (name) => KickOff(name),

    'Last(1|2|3)'.ri: (name) => Last(name),
    'Lead(er|ing)?s?'.ri: (name) => Leaders(name),
    'Left'.ri: (name) => Left(name),
    'LikeaCoupleUp'.ri: (name) => LikeACoupleUp(name),
    'LinearAction'.ri: (name) => LinearAction(name),
    'LinearCycle'.ri: (name) => LinearCycle(name),
    'LineOf6BendtheLine'.ri: (name) => LineofSixBendTheLine(name),
    'Lines.*Thru'.ri: (name) => LinesAnythingThru(name),
    //  Little needs two regexes
    //  to handle both <something> Little and Little <something>
    '(Scootand)?(Outside|Point)?(Out|In|Left|Right|(Go)?(Forward|AsYouAre))?Little'.ri:
        (name) => Little(name),
    '(Scootand)?Little(Outside|Point)(In|Out|Left|Right|(Go)?(Forward|AsYouAre))?'.ri:
        (name) => Little(name),
    'LoadtheBoat'.ri: (name) => LoadTheBoat(name),
    '(Left|Right|In|Out)?Loop(0|1|2|3)?'.ri: (name) => Loop(name),

    'MagicTransferand.+'.ri: (name) => MagicTransferAnd(name),
    'MakeMagic'.ri: (name) => MakeMagic(name),
    'MiniBusy'.ri: (name) => MiniBusy(name),
    'Mix'.ri: (name) => Mix(name),
    'Motivate'.ri: (name) => Motivate(name),

    'No(body|one)'.ri: (name) => Nobody(name),
    'Nothing'.ri: (name) => Nothing(name),

    'O[A-Z0-9].+'.r: (name) => OFormation(name),
    '112'.ri: (name) => OneAndaHalf(name),
    'Couples?(1|2|3|4)((and)?(2|3|4))*'.ri: (name) => OneCouple(name),
    'OutRollCirculate'.ri: (name) => OutRollCirculate(name),
    'Out(er|sides?)(2|4|6)?'.ri: (name) => Outsides(name),
    'Ownthe.*'.ri: (name) => OwnTheDancers(name),

    'PartnerTag'.ri: (name) => PartnerTag(name),
    'PassandRoll(Your(Cross)?Neighbor)?'.ri: (name) => PassAndRoll(name),
    'Pass(In|Out)'.ri: (name) => PassInOut(name),
    'PasstheAxle'.ri: (name) => PassTheAxle(name),
    'PasstheOcean'.ri: (name) => PassTheOcean(name),
    'PasstheSea'.ri: (name) => PassTheSea(name),
    'PassThru'.ri: (name) => PassThru(name),
    'PasstotheCenter'.ri: (name) => PassToTheCenter(name),
    'Patch(the)?($specifier)?'.ri: (name) => Patch(name),
    'Peel(Off|Left|Right)'.ri: (name) => PeelOff(name),
    'PeeltoaDiamond'.ri: (name) => PeelToADiamond(name),
    'Percolate'.ri: (name) => Percolate(name),
    'PerkUp'.ri: (name) => PerkUp(name),
    'Phantom.+'.ri: (name) => Phantom(name),
    'Plenty'.ri: (name) => Plenty(name),
    'Point'.ri: (name) => Points(name),
    'Prefer(the)($specifier)+'.ri: (name) => Prefer(name),
    'Promenade(Home)?'.ri: (name) => PromenadeHome(name),
    'Swing(Your)?Corner(and)?Promenade(Home)?'.ri: (name) => PromenadeHome(name),
    'Promenade(Home)?(With)?(Your)?Corner'.ri: (name) => PromenadeHome(name),
    '(Right)?PullBy'.ri: (name) => PullBy(name),

    '14(In|Out)'.ri: (name) => QuarterInOut(name),
    'anda?14More'.ri: (name) => QuarterMore(name),
    '(Left)?14Tag'.ri: (name) => QuarterTag(name),
    '(14|34)Mix'.ri: (name) => QuarterMix(name),
    '(14|34)Thru'.ri: (name) => QuarterThru(name),

    'Ramble'.ri: (name) => Ramble(name),
    'Recoil'.ri: (name) => Recoil(name),
    'Regroup'.ri: (name) => Regroup(name),
    'Relocate(.*)'.ri: (name) => Relocate(name),
    'RelaytheTop'.ri: (name) => RelayTheTop(name),
    'Remake'.ri: (name) => Remake(name),
    '.*(But)?Replace.*'.ri: (name) => Replace(name),
    '((Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?Triangles?)?Reshape(theTriangle)?'.ri: (name) => Reshape(name),
    'Reverse'.ri: (name) => Reverse(name),
    'ReverseExplode'.ri: (name) => ReverseExplode(name),
    'ReverseOrder'.ri: (name) => ReverseOrder(name),
    'RightandLeftThru'.ri: (name) => RightAndLeftThru(name),
    '(Left|Right)?Ripple.*'.ri: (name) => Ripple(name),
    '(and)?Roll'.ri: (name) => Roll(name),
    'RollAway'.r : (name) => Rollaway(name),
    '(Left|Right)RolltoaWave'.ri: (name) => RollToAWave(name),
    'Rotary'.ri: (name) => Rotary(name),
    'RotarySpin'.ri: (name) => RotarySpin(name),
    'Rotate(14|12|34)?'.ri: (name) => Rotate(name),
    'Run(Left|Right)?(Around\\d)?'.ri: (name) => Run(name),

    'SameSex(es)?.+'.ri: (name) => SameSex(name),
    'ScatterScoot'.ri: (name) => ScatterScoot(name),
    'ScootandCrossRamble'.ri: (name) => ScootAndCrossRamble(name),
    'ScootandPlenty'.ri: (name) => ScootAndPlenty(name),
    'ScootandRamble'.ri: (name) => ScootAndRamble(name),
    'ScootandWeave'.ri: (name) => ScootAndWeave(name),
    'ScootBack'.ri: (name) => ScootBack(name),
    '(Scatter)?ScootChainThru'.ri: (name) => ScootChainThru(name),
    //  Special hack for Centers Star Thru, otherwise it gets parsed
    //  as Centers Star
    'CenterStarThru'.ri: (name) => CentersStarThru(name),
    '(Center|Inside|Middle|Out(er|side))(Diamond|Star)'.ri: (name) => SelectDiamond(name),
    '(Near|Far|Left|Right)(Box|Line|Wave|Diamond|Star|\\d)'.ri:
        (name) => SelectLocation(name),
    'Separate'.ri: (name) => Separate(name),
    'Shazam'.ri: (name) => Shazam(name),
    'Siamese.*'.ri: (name) => Siamese(name),
    'Side'.ri: (name) => Sides(name),
    '(Single)?(Split)?Sidetrack'.ri: (name) => Sidetrack(name),
    'Single'.ri: (name) => Single(name),
    'SingleBounce(the)?($specifier)?'.ri: (name) => SingleBounce(name),
    'SingleCircle(Left|Right)(14|12|34)'.ri: (name) => SingleCircle(name),
    '(Reverse)?SingleCircle(34)?toaWave'.ri: (name) => SingleCircleToAWave(name),
    'SingleCrossandWheel'.ri: (name) => SingleCrossAndWheel(name),
    'SingleCrossTradeandWheel'.ri: (name) => SingleCrossTradeAndWheel(name),
    'SingleWheel'.ri: (name) => SingleWheel(name),
    '62AceyDeucey'.ri: (name) => SixTwoAceyDeucey(name),
    '(But)?($specifier)?(Skip|Delete).+Parts?'.ri: (name) => Skip(name),
    'Slide'.ri: (name) => Slide(name),
    '(12)?Slide(In|Out|Left|Right)'.ri: (name) => SlideDir(name),
    'SlideThru'.ri: (name) => SlideThru(name),
    'Slip'.ri: (name) => Slip(name),
    'Slither'.ri: (name) => Slither(name),
    'SnaptheLock'.ri: (name) => SnapTheLock(name),
    'SpinChaintheGears'.ri: (name) => SpinChainTheGears(name),
    'SpinChainandExchangetheGears'.ri: (name) => SpinChainAndExchangeTheGears(name),
    'SpinChainThru'.ri: (name) => SpinChainThru(name),
    '(Spin)?thePulley'.ri: (name) => SpinThePulley(name),
    'SpintheTop'.ri: (name) => SpinTheTop(name),
    '(.+)theWindmill(Left|Right|In|Out|Forward)(${specifier}Circulate.+)?'.ri: (name) => SpinTheWindmill(name),
    'SplitCirculate'.ri: (name) => SplitCirculate(name),
    'SplitCounterRotate'.ri: (name) => SplitCounterRotate(name),
    'SplitCounterRotate(14|12|34)'.ri: (name) => SplitCounterRotateFraction(name),
    'SplitDixieDiamond'.ri: (name) => SplitDixieDiamond(name),
    'SplitDixie(Sashay|Style(toaWave)?)'.ri: (name) => SplitDixieStyle(name),
    'SplitRecycle'.ri: (name) => SplitRecycle(name),
    'SplitSquareChainThru'.ri: (name) => SplitSquareChainThru(name),
    'SplitSquareChaintheTop'.ri: (name) => SplitSquareChainTheTop(name),
    'SplitSquareThru[2-7]?'.ri: (name) => SplitSquareThru(name),
    'Split(2|theOutsides?(Couple)?)'
        '(Separate)?(and)?(Go)?(Around1(toaLine)?|(and)?come(into|down)theMiddle)?'.ri:
        (name) => SplitTwo(name),
    '(and)?Spread'.ri: (name) => Spread(name),
    'SquareChaintheTop'.ri: (name) => SquareChainTheTop(name),
    'SquareChainThru'.ri: (name) => SquareChainThru(name),
    'SquaretheBases'.ri: (name) => SquareTheBases(name),
    'SquaretheSet'.ri: (name) => SquareTheSet(name),
    'Squeeze(the(Butterfly|O))?'.ri: (name) => Squeeze(name),
    'SqueezetheGalaxy'.ri: (name) => SqueezeTheGalaxy(name),
    'SqueezetheHourglass'.ri: (name) => SqueezeTheHourglass(name),
    'SquareThru(1|2|3|4|5|6|7)?'.ri: (name) => SquareThru(name),
    'SquareThruOn(2|3|4|5|6)(.+)'.ri: (name) => SquareThru(name),
    'StacktheLine'.ri: (name) => StackTheLine(name),
    'Stagger.*'.ri: (name) => Stagger(name),
    //  Make sure Start does not match Star
    'Start.*'.r: (name) => Start(name),
    '(_left)?StarThru'.ri: (name) => StarThru(name),
    'Step(Ahead)?'.ri: (name) => Step(name),
    'PressAhead'.ri: (name) => Step(name),
    'MoveIn(totheCenter)?'.ri: (name) => Step(name),
    'StepandFold'.ri: (name) => StepAndFold(name),
    'StepThru'.ri: (name) => StepThru(name),
    'SteptoaCompact(LeftHand)?Wave'.ri: (name) => StepToACompactWave(name),
    //  Stretch not Stretched
    'Stretch(?!ed)'.ri: (name) => Stretch(name),
    '(Lateral)?Substitute'.ri: (name) => Substitute(name),
    'Swap'.ri: (name) => SwapAround(name),
    'Sweep14'.ri: (name) => SweepAQuarter(name),
    'Swing'.ri: (name) => Swing(name),
    'SwingandCircle(14|12|34)'.ri: (name) => SwingAndCircle(name),
    'SwingandMix'.ri: (name) => SwingAndMix(name),
    'SwingtheFractions'.ri: (name) => SwingTheFractions(name),
    'SwingThru'.ri: (name) => SwingThru(name),
    'Switch(theLine)?'.ri: (name) => SwitchTheLine(name),

    'TagBack(toaWave)?'.ri: (name) => TagBack(name),
    'TagtheLine'.ri: (name) => TagTheLine(name),
    '(Left|Vertical){0,2}TagYour((Criss)?Cross)?Neighbor'.ri:
        (name) => TagYourNeighbor(name),
    'TallyHo'.ri: (name) => TallyHo(name),
    //  Tandem concept not tandem-based triangle
    'Tandem(?!Based).+'.ri: (name) => Tandem(name),
    'theAxle'.ri: (name) => TheAxle(name),
    'theK'.ri: (name) => TheK(name),
    'ThoseWhoCan'.ri: (name) => ThoseWhoCan(name),
    '32AceyDeucey'.ri: (name) => ThreeByTwoAceyDeucey(name),
    '34Tag(theLine)?'.r : (name) => ThreeQuartersTag(name),
    'toaWave'.ri: (name) => ToAWave(name),
    'Touch'.ri: (name) => Touch(name),
    'Steptoa(LeftHand)?Wave'.ri: (name) => Touch(name),
    'Touch(14|12|34)'.ri: (name) => TouchAQuarter(name),
    'TouchBy.*'.ri: (name) => TouchBy(name),
    '(Partner)?Trade(?!theWave)'.ri: (name) => Trade(name),
    'Trail'.ri: (name) => Trailers(name),
    'TrailtoaDiamond'.ri: (name) => TrailToADiamond(name),
    'Transferand.*'.ri: (name) => TransferAnd(name),
    'TravelThru'.ri: (name) => TravelThru(name),
    '(Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?TriangleCirculate'.ri:
        (name) => TriangleCirculate(name),
    '(Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?Triangle'.ri:
        (name) => SelectTriangle(name),
    'TripleBox(es)?.*'.r: (name) => TripleBox(name),
    'Triple(Lines?|Waves?|Columns?).*'.ri: (name) => TripleLine(name),
    '(Double|Triple)StarThru'.ri: (name) => TripleStarThru(name),
    'TripleTrade'.ri: (name) => TripleTrade(name),
    'Truck'.ri: (name) => Truck(name),
    'TurnThru'.ri: (name) => TurnThru(name),
    'TurnandDeal'.ri: (name) => TurnAndDeal(name),
    'U?TurnBack'.ri: (name) => TurnBack(name),
    'TurntheStars?(14|12|34|aFullTurn)'.ri: (name) => TurnTheStar(name),
    'DoNotTurntheStars?'.ri: (name) => TurnTheStar(name),
    '(Go)?Twice'.ri: (name) => Twice(name),
    'Twist(theLine|and.+)'.ri: (name) => TwistAnything(name),

    'Vertical'.ri: (name) => Vertical(name),
    '(Left)?Vertical(Left)?(14|12|34)?Tag'.ri: (name) => VerticalTag(name),
    '(Left)?VerticalTagBack(toaWave)?'.ri: (name) => VerticalTagBack(name),
    'VeryCenter'.ri: (name) => VeryCenters(name),
    'VeryEnd'.ri: (name) => VeryEnds(name),

    'WalkandDodge'.ri: (name) => WalkAndDodge(name),
    '${specifier}Walk(and)?${specifier}Dodge'.ri: (name) => WalkAndDodge(name),
    '$specifier${specifier}Walk(and)?$specifier${specifier}Dodge'.ri:
        (name) => WalkAndDodge(name),
    '(Wave|Line)of6'.ri: (name) => WaveOfSix(name),
    '(Dancersin)?Waves?(Dancers)?'.ri: (name) => Waves(name),
    'Weave'.ri: (name) => Weave(name),
    'WeavetheRing'.ri: (name) => WeaveTheRing(name),
    'Wheeland(?!Deal)'.ri: (name) => WheelAnd(name),
     'WheelAround'.ri: (name) => WheelAround(name),
    '(Reverse)?(14|34)?(Reverse)?Wheelthe(Ocean|Sea)'.ri: (name) => WheelTheOcean(name),
    '(and)?(the)?Others?.+'.ri: (name) => While(name),
    'While(the)?(Others?)?.+'.ri: (name) => While(name),
    '_windmill(In|Out|Left|Right|Forward)(${specifier}Circulate.+)?'.ri: (name) => WindmillX(name),
    'WiththeFlow'.ri: (name) => WithTheFlow(name),

    'Z[ai]g'.ri: (name) => Zig(name),
    'Z[ai]gZ[ai]g'.ri: (name) => ZigZag(name),
    'ZipCode\\d'.ri: (name) => ZipCode(name),
    'Zing|Zoom'.ri: (name) => Zoom(name)

  };

  static final Map<RegExp, CodedCall Function(String norm)> normCallMap2 = {
    //  Anything Motivate does not include Start or Finish Motivate
    //  and should not be "(some call) and Motivate"
    //  Anything Couple Up does not include Like A Couple Up
    '.+(?<!(start|finish|likea|part|and|$specifier))(motivate|coordinate|coupleup|percolate|perkup).*'.ri: (name) => Anything(name),
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
