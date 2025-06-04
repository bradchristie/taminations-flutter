/*

  Taminations Square Dance Animations
  Copyright (C) 2025 Brad Christie

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

import '../animated_call.dart';
import '../call_index.dart';
import '../extensions.dart';
import '../level_data.dart';
import 'normalize_call.dart';

class Words {

  static Map<String,List<AnimatedCall>> normalizedCallIndex = {};

  //  Keep a set of all words used in calls.
  //  Used to check sequencer abbreviations - don't let the use make
  //  an abbreviation for a real word.
  //  Start out with a few that are commonly returned by normalizeCall
  //  to help with the sequencer voice recognition.
  static Set<String> words = {
    'head', 'side', 'leader', 'trailer', 'boy', 'girl',
    'center', 'end', 'very', 'couple', 'home', 'undo', 'reset',
    'color', 'dancer', 'black', 'blue', 'cyan', 'gray', 'grey',
    'green', 'magenta', 'orange', 'red', 'white', 'yellow'
  };

  //  Read data at start of program
  static Future<bool> init() async {

    //  Add words in each call to set of all words
    if (words.length < 50) {
      for (var data in callIndex) {
        var dataWords = data.title.split('\\s+'.r).map((w) => w.toLowerCase());
        words.addAll(dataWords);
      }
    }
    //  Build index of normalized animated calls for sequencer
    if (normalizedCallIndex.isEmpty) {
      for (var data in callIndex) {
        for (var call in data.calls) {
          if (data.level != 'ssd')
            call.level = LevelData.find(data.level)!;
          if (!call.notForSequencer) {
            var norm = call.title.norm.lc;
            normalizedCallIndex.putIfAbsent(norm, () => []).add(call);
          }
        }
      }
    }
    return true;
  }


}