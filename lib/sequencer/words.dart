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
    '1','4','mix','the','deucey','wheel','ocean','sea','2','3','recycle','by','checkmate','column','transfer','triangle','formation','acey','ah','so','alamo','style','all','couples','8','concepts','spin','top','eight','allemande','left','thar','along','alter','and','circulate','wave','any','hand','concept','tagging','call','scatter','','your','neighbor','anyone','hop','anything','circle','roll','spread','chain','thru','choice','reaction','k','windmill','to','a','er','s','couple','up','arm','turns','as','backtrack','belles','beaus','bend','line','bias','big','block','bingo','boomerang','bounce','box','counter','rotate','gnat','brace','breaker','busy','but','butterfly','california','twirl','cast','shadow','relay','back','off','one','quarter','half','three','quarters','catch','centers','in','central','down','square','change','lanes','image','chase','right','fraction','tag','criss','cross','checkerboard','checkover','checkpoint','chisel','chuck','luck','rule','clover','cloverleaf','concentric','contour','coordinate','counterpoint','courtesy','turn','crazy','cycle','extend','flip','fold','invert','kick','lockit','over','ramble','run','swap','trade','trail','crossfire','cut','diamond','galaxy','hourglass','interlocked','delete','delight','detour','diagonal','dilemma','disband','disconnected','dive','divide','direction','dixie','grand','sashay','do','paso','part','dodge','dosado','double','pass','star','drift','apart','drop','out','ease','echo','ends','exchange','boxes','triangles','expand','explode','face','facing','fan','fancy','fascinate','fascinating','ferris','file','finally','finish','first','go','next','flare','lid','flutterwheel','follow','leader','forward','fourthly','fractional','tops','funny','gee','whiz','generous','good','show','remake','single','swing','here','comes','judge','hinge','lock','hocus','pocus','horseshoe','hubs','ignore','initially','inlet','little','more','plenty','rally','scoot','interrupt','jay','jaywalk','keep','ladies','men','latch','on','lateral','substitute','lead','lickety','split','lift','like','ripple','linear','action','lines','link','load','boat','em','lockers','loop','magic','make','mini','mirror','motivate','nuclear','o','oddly','evenly','offset','once','removed','open','outlet','own','pair','parallelogram','partner','axle','center','passing','patch','peel','percolate','perk','phantom','columns','waves','ping','pong','plan','ahead','polly','wally','prefer','press','promenade','pull','quadruple','quick','reach','reactivate','recoil','reflected','regroup','release','relocate','replace','reset','reshape','reverse','z','order','around','truck','revolve','rims','rip','rollaway','rotary','same','position','weave','scramble','secondly','see','saw','separate','sets','motion','shake','rattle','shakedown','shazam','shoot','siamese','sidetrack','six','two','skip','slant','slide','slip','clutch','slither','snap','sock','it','me','solid','something','new','gears','pulley','bases','squared','set','convention','squeeze','stable','stack','stagger','stampede','start','step','n','steps','at','time','stimulate','stingy','stretch','stretched','strip','strut','sweep','fractions','late','switch','an','t','bone','take','tally','ho','tandem','based','teacup','team','family','gamut','thirdly','touch','track','0','trapezoid','travel','trip','triple','formations','play','deal','key','turnstyle','twist','faced','thirds','twosome','unwrap','veer','vertical','walk','corner','ring','wind','bobbin','with','confidence','flow','wrap','wrong','way','zig','zag','zing','zip','code','zoom'
  };

  //  Read data at start of program
  static bool init() {

    //  Add words in each call to set of all words
    print('in Words.init');
    if (words.length < 50) {
      for (var data in callIndex) {
        var dataWords = data.title.replaceAll('\\W'.r, ' ').split('\\s+'.r).map((w) => w.toLowerCase());
        words.addAll(dataWords);
      }
      print(words.map((w)=>'\'$w\'').join(','));
    }
    print('Words.init 2');
    //  Build index of normalized animated calls for sequencer
    if (normalizedCallIndex.isEmpty) {
      for (var data in callIndex) {
        for (var call in flattenAnimatedCallList(data.calls)) {
            call.level = LevelData.find(data.level)!;
            if (!call.notForSequencer) {
              var norm = call.title.norm.lc;
              normalizedCallIndex.putIfAbsent(norm, () => []).add(call);
            }
        }
      }
    }
    print('out Words.init');
    return true;
  }


}