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

import '../extensions.dart';

/// Standardize a call name to match against other names  */
String normalizeCall(String callname) =>
    callname.capWords().trim()
        .replaceAll('\\(.*\\)'.ri,'')
        .replaceAll('&','and')
    //  Strip all non-alphanums
    //  But keep underscores, used for hidden calls
    //  and dots, used for decimal fractions
        .replaceAll('[^a-zA-Z0-9_. ]'.ri,'')
        .replaceAll('\\s+'.ri,' ')
    //  Through => Thru
        .replaceAll('\\bthrou?g?h?\\b'.ri,'Thru')
    //  One and a half
        .replaceAll('(onc?e and a half)|(1 12)|(15)'.ri,'112')
    //  Process fractions 1/2 3/4 1/4 2/3
    //  Non-alphanums are not used in matching
    //  so these fractions become 12 34 14 23
    //  Fortunately two-digit numbers are not used in calls
        .replaceAll('\\b12|((a|one).)?half\\b'.ri,'12')
        .replaceAll('\\b(three.quarters?|34)\\b'.ri,'34')
        .replaceAll('\\b(((a|one).)?quarter|14)\\b'.ri,'14')
        .replaceAll('\\b23|two.?thirds?\\b'.ri,'23')
    //  Process any other numbers
        .replaceAll('\\bzero\\b'.ri,'0')
        .replaceAll('\\b(1|onc?e)\\b'.ri,'1')
        .replaceAll('\\b(2|two)\\b'.ri,'2')
        .replaceAll('\\b(3|three)\\b'.ri,'3')
        .replaceAll('\\b(4|four)\\b'.ri,'4')
        .replaceAll('\\b(5|five)\\b'.ri,'5')
        .replaceAll('\\b(6|six)\\b'.ri,'6')
        .replaceAll('\\b(7|seven)\\b'.ri,'7')
        .replaceAll('\\b(8|eight)\\b'.ri,'8')
        .replaceAll('\\b(9|nine)\\b'.ri,'9')
    //  Ordinals
        .replaceAll('1st'.ri,'first')
        .replaceAll('2nd'.ri,'second')
        .replaceAll('3rd'.ri,'third')
        .replaceAll('4th'.ri,'fourth')
        .replaceAll('\\bforth\\b'.ri,'fourth')
        .replaceAll('5th'.ri,'fifth')
        .replaceAll('6th'.ri,'sixth')
        .replaceAll('2x'.ri, 'twice')
    //  Decimal fractions 2.5, 3.5 etc
        .replaceAllMapped('\\b([1-9])\\.5'.ri,
            (m) => '${m[1]}12')
    //  Now we can strip all other dots
        .replaceAll('\\.'.r,'')
    //  Standardize 6 by 2, 6-2, 6 2 Acey Deucey
        .replaceAll('(six|6)\\s*(by)?x?-?\\s*(two|2)'.ri,'62')
        .replaceAll('(three|3)\\s*(by)?x?-?\\s*(two|2)'.ri,'32')
        .replaceAll('(three|3)\\s*(by)?x?-?\\s*(one|1)'.ri,'31')
        .replaceAll('(one|1)\\s*(by)?x?-?\\s*(three|3)'.ri,'13')
    //  Use singular form
        .replaceAllMapped('\\b(boy|girl|beau|belle|center|end|point|head|(out)?side)s\\b'.ri, (m) => m[1]!)
    //  Misc other variations
        .replaceAll('magic column'.ri,'Magic ') //  'Column' of Magic Column is optional
        .replaceAll('\\bswap(\\s+around)?\\b'.ri,'Swap')
        .replaceAll('\\bm[ea]n\\b'.ri,'Boy')
        .replaceAll('\\bwom[ea]n\\b'.ri,'Girl')
        .replaceAll('\\blad(y|ies)\\b'.ri,'Girl')
        .replaceAll('\\bflutter\\s+\\wheel\\b'.ri,'Flutterwheel')
        .replaceAll('\\bcross\\s+\\fire\\b'.ri,'Crossfire')
        .replaceAll('crossover'.ri, 'Cross Over')
        .replaceAll('dopaso'.ri,'Do Paso')
    //  .replaceAll('\\blead(er)?(ing)?s?\\b'.ri,'Lead')
        .replaceAll('\\btrail(er)?(ing)?s?\\b'.ri,'Trail')
        .replaceAll('\\bcentres?\\b'.ri,'Center')
        .replaceAllMapped('\\b(1|3)4 tag the line\\b'.ri,
            (m) => '${m[1]}4 Tag')
        .replaceAll('\\b12 square thru\\b'.ri,'Square Thru 2')
        .replaceAll('(all 8|column|couples) Circulate'.ri,'Circulate')
        .replaceAll('\\ballamande?\\b'.ri,'Allemande')
        .replaceAll('left\\s*allemande'.ri,'Allemande Left')
        .replaceAllMapped('interlocked (flip|cut) the'.ri,
            (m) => '${m[1]} the Interlocked')
        .replaceAll('walk around your corner'.ri,'Walk Around the Corner')
        .replaceAll('on the second hand'.ri,'on 2')
        .replaceAll('on the third hand'.ri,'on 3')
        .replaceAll('on the fou?rth hand'.ri,'on 4')
        .replaceAll('on the fifth hand'.ri,'on 5')
        .replaceAll('on the sixth hand'.ri,'on 6')
        .replaceAllMapped('left (split )?dixie'.ri,(m)=>'Reverse ${m[1]??''}Dixie')
    //  Remove superfluous Buts, so not to confuse the real But
        .replaceAllMapped('but (skip|replace|delete|interrupt)'.ri, (m) => m[1]!)
    //  'Dixie Style' -> 'Dixie Style to a Wave'
        .replaceAll('\\bdixie style(?! to)'.ri,'Dixie Style to a Wave')
    //  Accept both Left Chase and Chase Left
        .replaceAll('\\bchase left\\b'.ri,'Left Chase')
    //  Change Circle 2 to Single Circle
        .replaceAll('Circle 2'.ri,'Single Circle')
    //  Change (fraction) Circle Left/Right to Circle Left/Right (fraction)
        .replaceAllMapped('(14|12|34) circle (left|right)'.ri,
            (m) => 'Circle ${m[2]} ${m[1]}')
    //  Accept optional 'dancers' e.g. 'head dancers' == 'heads'
        .replaceAll('\\bdancers?\\b'.ri,'')
    //  Also handle 'Lead Couples' as 'Leads'
    //  but make sure not to clobber 'As Couples' or 'Couples Hinge'
        .replaceAllMapped('((head|side|lead|trail|center|end).)couples'.ri,
            (m) => m[1]!)
    //  Finally remove non-alphanums and strip spaces
        .replaceAll('\\W'.ri,'')
        .replaceAll('\\s'.ri,'');
