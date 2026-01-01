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

import 'dart:async' show Future;

import 'package:flutter/services.dart' show rootBundle;
import 'package:platform/platform.dart';

import 'animated_call.dart';
import 'common_flutter.dart';

class CallListDatum {
  final String title;
  final String norm;
  final String link;
  final String languages;
  final String audio;
  CallListDatum(this.title,this.norm,this.link,this.languages,this.audio);
}

//  Class of static methods and data, this class is not instantiated
class TamUtils {

  static Map<String,List<AnimatedCall>> normalizedCallIndex = {};

  //  Link ssd assets to assets in b1/b2/ms
  //  Also re-directs assets from m26 and p26
  static Map<String,String> ssdDir = {
    'alamo_style' : 'b2',
    'all_around_the_corner' : 'b1',
    'allemande' : 'b1',
    'allemande_thar' : 'ms',
    'arm_turns' : 'b1',
    'bend_the_line' : 'b1',
    'box_the_gnat' : 'b2',
    'california_twirl' : 'b1',
    'cast_off_three_quarters' : 'ms',
    'centers_in' : 'ms',
    'chain_down_the_line' : 'b1',
    'circle' : 'b1',
    'circle_left' : 'b1',
    'circle_right' : 'b1',
    'circulate' : 'b1',
    'circulate_1' : 'b1',
    'circulate_2' : 'b1',
    'circulate_3' : 'b1',
    'circulate_4' : 'b1',
    'circulate_5' : 'b1',
    'circulate_6' : 'b1',
    'courtesy_turn' : 'b1',
    'cross_fold' : 'ms',
    'cross_run' : 'b2',
    'dive_thru' : 'b1',
    'dixie_syle' : 'ms',
    'dosado' : 'b1',
    'double_pass_thru' : 'b1',
    'extend' : 'b2',
    'extend-1' : 'b2',
    'extend-2' : 'b2',
    'extend-3' : 'b2',
    'extend-4' : 'b2',
    'extend-5' : 'b2',
    'extend-6' : 'b2',
    'extend-7' : 'b2',
    'extend-8' : 'b2',
    'extend-41' : 'b2',
    'extend-42' : 'b2',
    'extend-43' : 'b2',
    'extend-44' : 'b2',
    'extend-45' : 'b2',
    'extend-46' : 'b2',
    'extend-47' : 'b2',
    'extend-48' : 'b2',
    'face' : 'b1',
    'face_in' : 'b1',
    'face_out' : 'b1',
    'face_left' : 'b1',
    'face_right' : 'b1',
    'facing_couples_rule' : 'b2',
    'facing_couples_rule_1' : 'b2',
    'facing_couples_rule_2' : 'b2',
    'ferris_wheel' : 'b2',
    'first_couple_go' : 'b1',
    'first_couple_go_left_next_couple_go_right' : 'b1',
    'flutterwheel' : 'b2',
    'fold' : 'ms',
    'fold-1' : 'ms',
    'fold-2' : 'ms',
    'fold-3' : 'ms',
    'fold-4' : 'ms',
    'fold-5' : 'ms',
    'fold-6' : 'ms',
    'fold-7' : 'ms',
    'forward_and_back' : 'b1',
    'fraction_tag' : 'ms',
    'grand_square' : 'b1',
    'half_sashay' : 'b1',
    'half_tag' : 'ms',
    'hinge' : 'ms',
    'ladies_chain' : 'b1',
    'lead_right' : 'b1',
    'left_arm_turn' : 'b1',
    'left_hand_star' : 'b1',
    'ocean_wave' : 'b2',
    'ocean_wave_rule' : 'b2',
    'pass_the_ocean' : 'b2',
    'pass_thru' : 'b1',
    'passing_rule' : 'b1',
    'promenade' : 'b1',
    'pull_by' : 'b1',
    'recycle' : 'ms',
    'reverse_flutterwheel' : 'b2',
    'right_and_left_grand' : 'b1',
    'right_and_left_thru' : 'b1',
    'right_hand_star' : 'b1',
    'rollaway' : 'b1',
    'run' : 'b2',
    'same_position_rule' : 'b1',
    'sashay' : 'b1',
    'scoot_back' : 'ms',
    'separate' : 'b1',
    'slide_thru' : 'ms',
    'spin_the_top' : 'ms',
    'split_circulate' : 'b1',
    'split_the_outside_couple' : 'b1',
    'split_two' : 'b1',
    'square_thru' : 'b1',
    'star' : 'b1',
    'star_thru' : 'b1',
    'step_thru' : 'b1',
    'sweep_a_quarter' : 'b2',
    'swing' : 'b1',
    'swing_thru' : 'b2',
    'tag' : 'ms',
    'tag_the_line' : 'ms',
    'three_quarters_tag_the_line' : 'ms',
    'touch_a_quarter' : 'b2',
    'trade' : 'b2',
    'trade_by' : 'b2',
    'turn_back' : 'b1',
    'veer' : 'b1',
    'veer_left' : 'b1',
    'veer_right' : 'b1',
    'weave_the_ring' : 'b1',
    'wheel_and_deal' : 'b2',
    'wheel_around' : 'b2',
    'wrong_way_grand' : 'b1',
    'wrong_way_thar' : 'ms',
    'zoom' : 'b2',

    'acey_deucey' : 'plus',
    'anything_and_roll' : 'plus',
    'anything_and_spread' : 'plus',
    'all_8_spin_the_top' : 'plus',
    'chase_right' : 'plus',
    'circle_to_a_line' : 'b1',
    'clover_and_anything' : 'a1',
    'cloverleaf' : 'ms',
    'coordinate' : 'plus',
    'crossfire' : 'plus',
    'cut_the_diamond' : 'plus',
    'diamond_circulate' : 'plus',
    'dixie_grand' : 'plus',
    'dixie_style' : 'ms',
    'do_paso' : 'b1',
    'eight_chain_thru' : 'ms',
    'explode_and_anything' : 'plus',
    'explode_the_wave' : 'plus',
    'fan_the_top' : 'plus',
    'flip_the_diamond' : 'plus',
    'follow_your_neighbor' : 'plus',
    'grand_swing_thru' : 'plus',
    'linear_cycle' : 'plus',
    'load_the_boat' : 'plus',
    'pair_off' : 'a1',
    'partner_hinge' : 'a1',
    'partner_tag' : 'a1',
    'pass_the_sea' : 'a1',
    'pass_to_the_center' : 'ms',
    'peel_off' : 'plus',
    'peel_the_top' : 'plus',
    'ping_pong_circulate' : 'plus',
    'quarter_thru' : 'a1',
    'grand_quarter_thru' : 'a1',
    'relay_the_deucey' : 'plus',
    'scoot_and_dodge' : 'a1',
    'see_saw' : 'b1',
    'shoot_the_star' : 'ms',
    'slip_the_clutch' : 'ms',
    'spin_chain_and_exchange_the_gears' : 'plus',
    'spin_chain_the_gears' : 'plus',
    'spin_chain_thru' : 'ms',
    'teacup_chain' : 'plus',
    'thar' : 'ms',
    'track_ii' : 'plus',
    'trade_the_wave' : 'plus',
    'triple_scoot' : 'plus',
    'triple_trade' : 'a1',
    'turn_thru' : 'ms',
    'walk_and_dodge' : 'ms',
    'walk_around_the_corner' : 'b1',

  };

  static String linkSSD(String filename) {
    if (filename.startsWith('(ssd|m26|p26)/'.r)) {
      final name = filename.replaceFirst('(ssd|m26|p26)/'.r,'')
          .replaceFirst('\\..*'.r, '');
      final dir = ssdDir[name] ?? 'ssd';
      return filename.replaceFirst('(ssd|m26|p26)'.r, dir);
    }
    return filename;
  }

  //  Read an XML file or other from the assets
  static Future<String> getAsset(String filename) async {
    return rootBundle.loadString('assets/${linkSSD(filename)}');
  }

  static String platform() {
    try {
      final platform = LocalPlatform();
      return platform.operatingSystem;
      //  Currently web returns LocalPlatform but does not have
      //  an operating system so .operatingSystem throws UnsupportedError
    } on UnsupportedError catch (_) { }
    return 'web';
  }

  static bool get isTouchDevice => platform().matches('(android|ios)'.r);
  static bool get isWindowDevice =>
      platform().matches('(windows|macos)'.r);
  static bool get canListen => platform().matches('(android|ios)'.r);
  static bool get canSpeak => platform().matches('(android|ios|web|macos)'.r);

}