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


import 'a2/in_roll_circulate.dart';
import 'a2/diamond_chain_thru.dart';
import 'a2/out_roll_circulate.dart';
import 'b1/single_circle.dart';
import 'b1/weave_the_ring.dart';
import 'c1/follow_thru.dart';
import 'c1/prefer.dart';
import 'c1/weave.dart';
import 'c2/cross_concentric_cycle_and_wheel.dart';
import 'c2/vertical.dart';
import 'common/double_selector.dart';
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
    'AceyDeucey'.r: (name) => AceyDeucey(name),
    'Adjust(to)?.*'.r: (name) => Adjust(name),
    'All8(?!Circulate)(?!Recycle)'.r: (name) => AllEight(name),
    'AllemandeLeft'.r: (name) => AllemandeLeft(name),
    'AlterandCirculate'.r: (name) => AlterAndCirculate(name),
    'AltertheWave'.r: (name) => AlterTheWave(name),
    'and'.r: (name) => And(name),
    '.*(?<!(Swing))andCircle(14|12|34)'.r: (name) => AnythingAndCircle(name),
    'InterlockedDiamondChainThru'.r: (name) => AnythingChainThru(name),
    'Around1andComeIntotheMiddle'.r: (name) => AroundToALine(name),
    'Around1toaLine'.r: (name) => AroundToALine(name),
    'Around2toaLine'.r: (name) => AroundToALine(name),
    'AsCouples(?!Roll).*'.r: (name) => AsCouples(name),
    'AsCouplesRoll'.r: (name) => AsCouplesRoll(name),

    'Back([Aa]way|[Uu]p)'.r: (name) => BackAway(name),
    'Balance'.r: (name) => Balance(name),
    'Beau'.r: (name) => Beaus(name),
    'Belle'.r: (name) => Belles(name),
    'BendtheLine'.r: (name) => BendTheLine(name),
    '(Line|Wave)of(6|8)(Left)?(12)?Tag(theLine)?'.r: (name) => BigLineTagTheLine(name),
    '(Line|Wave)of(6|8)(Left)?TurnandDeal'.r: (name) => BigLineTurnAndDeal(name),
    '(InYour)?Block.*'.r: (name) => BlockFormation(name),
    'Bounce(the)?($specifier)?'.r: (name) => Bounce(name),
    'Boy'.r: (name) => Boys(name),
    'BoxCounterRotate(14|12|34)'.r: (name) => BoxCounterRotateFraction(name),
    'BoxtheGnat'.r: (name) => BoxTheGnat(name),
    'BraceThru'.r: (name) => BraceThru(name),
    'Breaker(1|2|3)?'.r: (name) => Breaker(name),
    '.*But(?![a-z]).*'.r: (name) => But(name),
    'Butterfly.*'.r: (name) => Butterfly(name),

    'CaliforniaTwirl'.r: (name) => CaliforniaTwirl(name),
    '(14|12|34)?CastandRelay'.r: (name) => CastAndRelay(name),
    'CastaShadow(Center(Go|Cast)?34)?'.r: (name) => CastAShadow(name),
    '(Cross)?CastBack'.r: (name) => CastBack(name),
    'CastOff(14|12|34)'.r: (name) => CastOffThreeQuarters(name),
    '(All4Couples)?(Left)?(Split)?Catch.*?(1|2|3|4)'.r: (name) => Catch(name),
    'Center'.r: (name) => Centers(name),
    'Center6'.r: (name) => CenterSix(name),
    'Center(Line|Wave)(of4)?'.r: (name) => CenterWaveOfFour(name),
    'Chain'.r: (name) => Chain(name),
    'ChainDowntheLine'.r: (name) => ChainDownTheLine(name),
    'ChainReaction'.r: (name) => ChainReaction(name),
    'Changethe(Centers?|Wave)'.r: (name) => ChangeTheCenters(name),
    'ChaseRight'.r: (name) => ChaseRight(name),
    'Checkpoint((.+)By(.*))?'.r: (name) => Checkpoint(name),
    'ChiselThru'.r: (name) => ChiselThru(name),
    'CircleBy((14|12|34|Nothing)and(14|12|34|Nothing))?'.r: (name) => CircleBy(name),
    'CircleBy(14|12|34|Nothing)and(?!(14|12|34|Nothing)).*'.r: (name) => CircleBy(name),
    '(Box)?Circulate'.r: (name) => Circulate(name),
    '(Cross)?Cloverand(\\w.*)'.r: (name) => CloverAnd(name),
    'Cloverleaf'.r: (name) => Cloverleaf(name),
    'Concentric'.r: (name) => Concentric(name),
    'Coordinate'.r: (name) => Coordinate(name),
    'CounterRotate'.r: (name) => CounterRotate(name),
    '(DancersIn)?Couples'.r: (name) => Couples(name),
    'CoupleUp'.r : (name) => CoupleUp(name),
    'CourtesyTurn'.r: (name) => CourtesyTurn(name),
    '(14|12|34)?(Reverse)?Crazy.*'.r: (name) => Crazy(name),
    'Cross'.r: (name) => Cross(name),
    'CrossandWheel'.r: (name) => CrossAndWheel(name),
    'CrossChain(Thru|andRoll)'.r: (name) => CrossChainThru(name),
    'CrossConcentric'.r: (name) => CrossConcentric(name),
    'CrossConcentricCycleandWheel'.r: (name) => CrossConcentricCycleAndWheel(name),
    'Crossfire'.r: (name) => Crossfire(name),
    'CrossFold'.r: (name) => CrossFold(name),
    'Cross[Oo]verCirculate'.r: (name) => CrossOverCirculate(name),
    'CrossRamble'.r: (name) => CrossRamble(name),
    '($specifier)+CrossRun'.r: (name) => CrossRun(name),
    'CrossTradeandWheel'.r: (name) => CrossTradeAndWheel(name),

    'Debug.*'.r: (name) => SetDebugSwitch(name),
    'Detour'.r: (name) => Detour(name),
    'DiamondChainThru'.r: (name) => DiamondChainThru(name),
    'DiamondCirculate'.r: (name) => DiamondCirculate(name),
    'DixieDiamond'.r: (name) => DixieDiamond(name),
    'DiveThru'.r: (name) => DiveThru(name),
    'Dodge.*'.r: (name) => Dodge(name),
    'Dothe.+?Part.+'.r: (name) => DoOnePart(name),
    'Dosado(toaWave)?'.r: (name) => Dosado(name),
    'DoubleCross'.r: (name) => DoubleCross(name),
    'DoubleScoot'.r: (name) => DoubleScoot(name),
    '($specifier)+and($specifier)+'.r: (name) => DoubleSelector(name),
    'DoYourPart.*'.r: (name) => DoYourPart(name),

    '8Chain(1|2|3|4|5|6|7|Thru)'.r: (name) => EightChain(name),
    'End'.r: (name) => Ends(name),
    '(Then)?Every(one|body)'.r: (name) => Everyone(name),
    'Except(the)?$specifier'.r: (name) => Except(name),
    'Explode'.r: (name) => Explode(name),
    'ExplodetheWave'.r: (name) => ExplodeTheWave(name),

    'Face(In|Out|Left|Right|theCaller)'.r: (name) => Face(name),
    'Facing'.r: (name) => FacingDancers(name),
    '(Those|Dancers)?FacingIn'.r: (name) => FacingIn(name),
    '(Those|Dancers)?FacingOut'.r: (name) => FacingOut(name),
    '(Those|Dancers)?FacingtheCaller'.r: (name) => FacingTheCaller(name),
    'FantheTop'.r: (name) => FanTheTop(name),
    'Fascinating.*'.r: (name) => Fascinating(name),
    'Finish.*'.r: (name) => Finish(name),
    'First(1|2|3)'.r : (name) => First(name),
    'Flip(In|Out|Left|Right)?'.r: (name) => Flip(name),
    'FlipBack'.r: (name) => FlipBack(name),
    'FlipYour(Criss)?(Cross)?Neighbor'.r: (name) => FlipYourNeighbor(name),
    'Fold'.r: (name) => Fold(name),
    'FollowThru'.r: (name) => FollowThru(name),
    '\\d\\d'.r: (name) => Fraction(name),

    'Girl|Ladies|Lady'.r: (name) => Girls(name),
    'Grand'.r: (name) => Grand(name),
    '((Head|Side)Face)?GrandSquare((\\d+)Steps)?'.r: (name) => GrandSquare(name),

    '12Sashay'.r: (name) => HalfSashay(name),
    '12Tag'.r: (name) => HalfTag(name),
    'HalftheK'.r: (name) => HalfTheK(name),
    'Head'.r: (name) => Heads(name),
    '(Single|Partner)?Hinge'.r: (name) => Hinge(name),
    '(Magic)?HocusPocus'.r: (name) => HocusPocus(name),
    'HorseshoeTurn'.r: (name) => HorseshoeTurn(name),
    '(Hubs|Rims)Trade.*'.r: (name) => HubsTrade(name),

    'Ignore.*'.r: (name) => Ignore(name),
    'Individually'.r: (name) => Nothing(name),
    'In[Rr]ollCirculate'.r: (name) => InRollCirculate(name),
    'Center(2|4|6)'.r: (name) => Insides(name),
    'In(ner|sides?)(2|4|6)?'.r: (name) => Insides(name),
    'Interrupt.*'.r: (name) => Interrupt(name),
    'IntheCenter'.r: (name) => InTheCenter(name),

    'Jaywalk'.r: (name) => Jaywalk(name),

    '(Cross)?Kick[Oo]ff'.r: (name) => KickOff(name),

    'Last(1|2|3)'.r: (name) => Last(name),
    'Lead(er|ing)?s?'.r: (name) => Leaders(name),
    'Left'.r: (name) => Left(name),
    'LikeaCoupleUp'.r: (name) => LikeACoupleUp(name),
    'LinearAction'.r: (name) => LinearAction(name),
    'LinearCycle'.r: (name) => LinearCycle(name),
    'Lines.*Thru'.r: (name) => LinesAnythingThru(name),
    //  Little needs two regexes
    //  to handle both <something> Little and Little <something>
    '(Scootand)?(Outside|Point)?(Out|In|Left|Right|(Go)?(Forward|AsYouAre))?Little'.r:
        (name) => Little(name),
    '(Scootand)?Little(Outside|Point)(In|Out|Left|Right|(Go)?(Forward|AsYouAre))?'.r:
        (name) => Little(name),
    'LoadtheBoat'.r: (name) => LoadTheBoat(name),
    '(Left|Right|In|Out)?Loop(0|1|2|3)?'.r: (name) => Loop(name),

    'MagicTransferand.+'.r: (name) => MagicTransferAnd(name),
    'MakeMagic'.r: (name) => MakeMagic(name),
    'Mini[Bb]usy'.r: (name) => MiniBusy(name),
    'Mix'.r: (name) => Mix(name),
    'Motivate'.r: (name) => Motivate(name),

    'No(body|one)'.r: (name) => Nobody(name),
    'Nothing'.r: (name) => Nothing(name),

    'O[A-Z0-9].+'.r: (name) => OFormation(name),
    '112'.r: (name) => OneAndaHalf(name),
    'Couples?(1|2|3|4)((and)?(2|3|4))*'.r: (name) => OneCouple(name),
    'Out[Rr]ollCirculate'.r: (name) => OutRollCirculate(name),
    'Out(er|sides?)(2|4|6)?'.r: (name) => Outsides(name),
    'Ownthe.*'.r: (name) => OwnTheDancers(name),

    'PartnerTag'.r: (name) => PartnerTag(name),
    'PassandRoll(Your(Cross)?Neighbor)?'.r: (name) => PassAndRoll(name),
    'Pass(In|Out)'.r: (name) => PassInOut(name),
    'PasstheAxle'.r: (name) => PassTheAxle(name),
    'PasstheOcean'.r: (name) => PassTheOcean(name),
    'PasstheSea'.r: (name) => PassTheSea(name),
    'PassThru'.r: (name) => PassThru(name),
    'PasstotheCenter'.r: (name) => PassToTheCenter(name),
    'Patch(the)?($specifier)?'.r: (name) => Patch(name),
    'Peel(Off|Left|Right)'.r: (name) => PeelOff(name),
    'PeeltoaDiamond'.r: (name) => PeelToADiamond(name),
    'Percolate'.r: (name) => Percolate(name),
    'Phantom.+'.r: (name) => Phantom(name),
    'Plenty'.r: (name) => Plenty(name),
    'Point'.r: (name) => Points(name),
    'Prefer(the)($specifier)+'.r: (name) => Prefer(name),
    'Promenade(Home)?'.r: (name) => PromenadeHome(name),
    'Swing(Your)?Corner(and)?Promenade(Home)?'.r: (name) => PromenadeHome(name),
    'Promenade(Home)?(With)?(Your)?Corner'.r: (name) => PromenadeHome(name),
    '(Left|Right)?PullBy'.r: (name) => PullBy(name),

    '14(In|Out)'.r: (name) => QuarterInOut(name),
    'anda?14More'.r: (name) => QuarterMore(name),
    '(Left)?14Tag'.r: (name) => QuarterTag(name),
    '(14|34)Mix'.r: (name) => QuarterMix(name),
    '(14|34)Thru'.r: (name) => QuarterThru(name),

    'Ramble'.r: (name) => Ramble(name),
    'Regroup'.r: (name) => Regroup(name),
    'Relocate(.*)'.r: (name) => Relocate(name),
    'RelaytheTop'.r: (name) => RelayTheTop(name),
    'Remake'.r: (name) => Remake(name),
    '.*(But)?Replace.*'.r: (name) => Replace(name),
    '((Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?Triangles?)?Reshape(theTriangle)?'.r: (name) => Reshape(name),
    'Reverse'.r: (name) => Reverse(name),
    'ReverseExplode'.r: (name) => ReverseExplode(name),
    'ReverseOrder'.r: (name) => ReverseOrder(name),
    'RightandLeftThru'.r: (name) => RightAndLeftThru(name),
    '(Left|Right)?Ripple.*'.r: (name) => Ripple(name),
    '(and)?Roll'.r: (name) => Roll(name),
    'Roll[Aa]way'.r : (name) => Rollaway(name),
    '(Left|Right)RolltoaWave'.r: (name) => RollToAWave(name),
    'Rotary'.r: (name) => Rotary(name),
    'RotarySpin'.r: (name) => RotarySpin(name),
    'Rotate(14|12|34)?'.r: (name) => Rotate(name),
    'Run(Left|Right)?(Around\\d)?'.r: (name) => Run(name),

    'SameSex(es)?.+'.r: (name) => SameSex(name),
    'ScootandCrossRamble'.r: (name) => ScootAndCrossRamble(name),
    'ScootandPlenty'.r: (name) => ScootAndPlenty(name),
    'ScootandRamble'.r: (name) => ScootAndRamble(name),
    'ScootandWeave'.r: (name) => ScootAndWeave(name),
    'ScootBack'.r: (name) => ScootBack(name),
    '(Scatter)?ScootChainThru'.r: (name) => ScootChainThru(name),
    //  Special hack for Centers Star Thru, otherwise it gets parsed
    //  as Centers Star
    'CenterStarThru'.r: (name) => CentersStarThru(name),
    '(Center|Inside|Middle|Out(er|side))(Diamond|Star)'.r: (name) => SelectDiamond(name),
    '(Near|Far|Left|Right)(Box|Line|Wave|Diamond|Star|\\d)'.r:
        (name) => SelectLocation(name),
    'Separate'.r: (name) => Separate(name),
    'Shazam'.r: (name) => Shazam(name),
    'Siamese.*'.r: (name) => Siamese(name),
    'Side'.r: (name) => Sides(name),
    '(Single)?(Split)?Sidetrack'.r: (name) => Sidetrack(name),
    'Single'.r: (name) => Single(name),
    'SingleBounce(the)?($specifier)?'.r: (name) => SingleBounce(name),
    'SingleCircle(Left|Right)(14|12|34)'.r: (name) => SingleCircle(name),
    '(Reverse)?SingleCircle(34)?toaWave'.r: (name) => SingleCircleToAWave(name),
    'SingleCrossandWheel'.r: (name) => SingleCrossAndWheel(name),
    'SingleCrossTradeandWheel'.r: (name) => SingleCrossTradeAndWheel(name),
    'SingleWheel'.r: (name) => SingleWheel(name),
    '62AceyDeucey'.r: (name) => SixTwoAceyDeucey(name),
    '(But)?($specifier)?(Skip|Delete).+Parts?'.r: (name) => Skip(name),
    'Slide'.r: (name) => Slide(name),
    'Slide(In|Out|Left|Right)'.r: (name) => SlideDir(name),
    'SlideThru'.r: (name) => SlideThru(name),
    'Slip'.r: (name) => Slip(name),
    'Slither'.r: (name) => Slither(name),
    'SnaptheLock'.r: (name) => SnapTheLock(name),
    'SpinChaintheGears'.r: (name) => SpinChainTheGears(name),
    'SpinChainandExchangetheGears'.r: (name) => SpinChainAndExchangeTheGears(name),
    'SpinChainThru'.r: (name) => SpinChainThru(name),
    '(Spin)?thePulley'.r: (name) => SpinThePulley(name),
    'SpintheTop'.r: (name) => SpinTheTop(name),
    '(.+)theWindmill(Left|Right|In|Out|Forward)(${specifier}Circulate.+)?'.r: (name) => SpinTheWindmill(name),
    'SplitCirculate'.r: (name) => SplitCirculate(name),
    'SplitCounterRotate'.r: (name) => SplitCounterRotate(name),
    'SplitCounterRotate(14|12|34)'.r: (name) => SplitCounterRotateFraction(name),
    'SplitDixieDiamond'.r: (name) => SplitDixieDiamond(name),
    'SplitDixie(Sashay|Style(toaWave)?)'.r: (name) => SplitDixieStyle(name),
    'SplitRecycle'.r: (name) => SplitRecycle(name),
    'SplitSquareChainThru'.r: (name) => SplitSquareChainThru(name),
    'SplitSquareChaintheTop'.r: (name) => SplitSquareChainTheTop(name),
    'SplitSquareThru[2-7]?'.r: (name) => SplitSquareThru(name),
    'Split(2|theOutsides?(Couple))?'.r: (name) => SplitTwo(name),
    '(and)?Spread'.r: (name) => Spread(name),
    'SquareChaintheTop'.r: (name) => SquareChainTheTop(name),
    'SquareChainThru'.r: (name) => SquareChainThru(name),
    'SquaretheBases'.r: (name) => SquareTheBases(name),
    'SquaretheSet'.r: (name) => SquareTheSet(name),
    'Squeeze(the(Butterfly|O))?'.r: (name) => Squeeze(name),
    'SqueezetheGalaxy'.r: (name) => SqueezeTheGalaxy(name),
    'SqueezetheHourglass'.r: (name) => SqueezeTheHourglass(name),
    'SquareThru(1|2|3|4|5|6|7)'.r: (name) => SquareThru(name),
    'SquareThruOn(2|3|4|5|6)(.+)'.r: (name) => SquareThru(name),
    'StacktheLine'.r: (name) => StackTheLine(name),
    'Stagger.*'.r: (name) => Stagger(name),
    //  Make sure Start does not match Star
    'Start.*'.r: (name) => Start(name),
    '(_left)?StarThru'.r: (name) => StarThru(name),
    'Step(Ahead)?'.r: (name) => Step(name),
    'PressAhead'.r: (name) => Step(name),
    'MoveIn(totheCenter)?'.r: (name) => Step(name),
    'StepThru'.r: (name) => StepThru(name),
    'SteptoaCompact(Left[Hh]and)?Wave'.r: (name) => StepToACompactWave(name),
    //  Stretch not Stretched
    'Stretch(?!ed)'.r: (name) => Stretch(name),
    '(Lateral)?Substitute'.r: (name) => Substitute(name),
    'Swap'.r: (name) => SwapAround(name),
    'Sweep14'.r: (name) => SweepAQuarter(name),
    'Swing'.r: (name) => Swing(name),
    'SwingandCircle(14|12|34)'.r: (name) => SwingAndCircle(name),
    'SwingandMix'.r: (name) => SwingAndMix(name),
    'SwingtheFractions'.r: (name) => SwingTheFractions(name),
    'SwingThru'.r: (name) => SwingThru(name),
    'Switch(theLine)?'.r: (name) => SwitchTheLine(name),

    'TagBack(toaWave)?'.r: (name) => TagBack(name),
    'TagtheLine'.r: (name) => TagTheLine(name),
    '(Left|Vertical){0,2}TagYour((Criss)?Cross)?Neighbor'.r:
        (name) => TagYourNeighbor(name),
    'TallyHo'.r: (name) => TallyHo(name),
    //  Tandem concept not tandem-based triangle
    'Tandem(?!Based).+'.r: (name) => Tandem(name),
    'theAxle'.r: (name) => TheAxle(name),
    'theK'.r: (name) => TheK(name),
    'ThoseWhoCan'.r: (name) => ThoseWhoCan(name),
    '32AceyDeucey'.r: (name) => ThreeByTwoAceyDeucey(name),
    '34Tag(theLine)?'.r : (name) => ThreeQuartersTag(name),
    '($specifier)?toaWave'.r: (name) => ToAWave(name),
    'Touch'.r: (name) => Touch(name),
    'Steptoa(Left[Hh]and)?Wave'.r: (name) => Touch(name),
    'Touch(14|12|34)'.r: (name) => TouchAQuarter(name),
    'TouchBy.*'.r: (name) => TouchBy(name),
    '(Partner)?Trade(?!theWave)'.r: (name) => Trade(name),
    'Trail'.r: (name) => Trailers(name),
    'TrailtoaDiamond'.r: (name) => TrailToADiamond(name),
    'Transferand.*'.r: (name) => TransferAnd(name),
    '(Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?TriangleCirculate'.r:
        (name) => TriangleCirculate(name),
    '(Inside|Outside|Inpoint|Outpoint|TandemBased|WaveBased)?Triangle'.ri:
        (name) => SelectTriangle(name),
    'TripleBox.*'.r: (name) => TripleBox(name),
    'Triple(Lines?|Waves?|Columns?).*'.r: (name) => TripleLine(name),
    '(Double|Triple)StarThru'.r: (name) => TripleStarThru(name),
    'TripleTrade'.r: (name) => TripleTrade(name),
    'Truck'.r: (name) => Truck(name),
    'TurnThru'.r: (name) => TurnThru(name),
    'TurnandDeal'.r: (name) => TurnAndDeal(name),
    'U?TurnBack'.r: (name) => TurnBack(name),
    '.*TurntheStars?(14|12|34|aFullTurn)'.r: (name) => TurnTheStar(name),
    '.*DoNotTurntheStars?'.r: (name) => TurnTheStar(name),
    '(Go)?Twice'.r: (name) => Twice(name),
    'Twist(theLine|and.+)'.r: (name) => TwistAnything(name),

    'Vertical'.r: (name) => Vertical(name),
    '(Left)?Vertical(Left)?(14|12|34)?Tag'.r: (name) => VerticalTag(name),
    '(Left)?VerticalTagBack(toaWave)?'.r: (name) => VerticalTagBack(name),
    'VeryCenter'.r: (name) => VeryCenters(name),
    'VeryEnd'.r: (name) => VeryEnds(name),

    'WalkandDodge'.r: (name) => WalkAndDodge(name),
    '${specifier}Walk(and)?${specifier}Dodge'.r: (name) => WalkAndDodge(name),
    '$specifier${specifier}Walk(and)?$specifier${specifier}Dodge'.r:
        (name) => WalkAndDodge(name),
    '(Wave|Line)of6'.r: (name) => WaveOfSix(name),
    '(Dancersin)?Waves?(Dancers)?'.r: (name) => Waves(name),
    'Weave'.r: (name) => Weave(name),
    'WeavetheRing'.r: (name) => WeaveTheRing(name),
    'Wheeland(?!Deal)'.r: (name) => WheelAnd(name),
     'WheelAround'.r: (name) => WheelAround(name),
    '(Reverse)?(14|34)?(Reverse)?Wheelthe(Ocean|Sea)'.r: (name) => WheelTheOcean(name),
    '(and)?(the)?Others?.+'.r: (name) => While(name),
    'While(the)?(Others?)?.+'.r: (name) => While(name),
    '_windmill(In|Out|Left|Right|Forward)(${specifier}Circulate.+)?'.r: (name) => WindmillX(name),
    'WiththeFlow'.r: (name) => WithTheFlow(name),

    'Z[ai]g'.r: (name) => Zig(name),
    'Z[ai]gZ[ai]g'.r: (name) => ZigZag(name),
    'ZipCode\\d'.r: (name) => ZipCode(name),
    'Zing|Zoom'.r: (name) => Zoom(name)

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
