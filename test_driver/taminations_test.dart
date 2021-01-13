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

// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

final testSequences = {

  'Back Away':
  '''Heads Right and Left Thru and Back Away
Sides Pass the Ocean''',

  'Beaus Run':
  '''Heads Pass the Ocean
Extend
Hinge
Centers Trade
Centers Run
Beaus Run
Recycle
Touch a Quarter
Centers Circulate
Boys Run
Bend the Line
Quarter Out
Allemande Left''',

  'Belles Run':
  '''Heads Lead Right
Sides Half Sashay
Touch a Quarter
Centers Run
Bend the Line
Pass Thru
Belles Trade
Swing Thru
Recycle
Veer Left
Bend the Line
Touch a Quarter
Circulate
Boys Run
Allemande Left''',

  'Box Counter Rotate':
  '''Heads Right and Left Thru
Centers Box Counter Rotate
Double Pass Thru ''',

  'Box the Gnat':
  '''Heads Box the Gnat
Sides Separate and Box the Gnat
Centers Pass In
Slide Thru
Cloverleaf
Zoom
Centers Pass Thru
Allemande Left''',

  'Brace Thru':
  '''Heads Pass the Ocean
Extend
Leads Turn Back
Brace Thru
Slide Thru
Right and Left Thru
Pass Thru
Trade By
Allemande Left''',

  'Brace Thru 2':
  '''Heads Star Thru and Spread 
Pass the Ocean 
Brace Thru 
Veer Left 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'Brace Thru 3':
  '''Heads Star Thru and Spread 
Pass the Ocean 
Recycle 
Centers In 
Boys Run 
Step to a Wave 
Brace Thru 
Centers Pass Thru 
Centers Run 
Touch a Quarter 
Circulate 
Face In 
Fan the Top 
Brace Thru 
Pass Thru 
Trade By 
Pass Thru 
Allemande Left ''',

  'California Twirl':
  '''Sides Star Thru
Centers California Twirl
Star Thru
Right and Left Thru ''',

  'Center 6':
  '''Heads Pass the Ocean
Center 6 Turn Back
Acey Deucey ''',

  'Circle By':
  '''Heads Circle By 1/2 and 1/4
Girls Pass Thru
Centers Girls Cross
Checkmate
Bend the Line
Circle By 1/4 and 3/4
Boys Run
Ferris Wheel
Centers Pass Thru
Circle By 3/4 and Recycle
Pass the Ocean
Circulate
Boys Run
Bend the Line
Star Thru
Pass Thru
Allemande Left''',

  'Clover And':
  '''Heads Pass Thru
Clover and Touch 1/4
Centers Run
Centers Touch a Quarter
Out-Roll Circulate
Girls Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Courtesy Turn':
  '''Heads Pass Thru
Centers Courtesy Turn and Back Away
Sides Star Thru
Double Pass Thru
Ends Courtesy Turn
Pass Thru
Trade By
Allemande Left''',

  'Cross':
  '''Heads Lead Right
Boys Cross
Cross
Trade By
Girls Cross
Circulate
Boys Run
Veer Left
Bend the Line
Centers Girls Cross''',

  'Cross 2':
  '''Heads Touch a Quarter and Cross 
Slide Thru 
Step and Slide 
Cloverleaf 
Split Square Thru 
Trade By 
Veer Left 
Bend the Line 
Square Thru 2 
Allemande Left''',

  'Cross Fold':
  '''Heads Pass the Ocean
Extend
Girls Cross Fold
Boys Trade and Roll and Roll
Peel Off
Boys Cross Fold
Peel and Trail
Spin the Top
Boys Cross Fold
Girls Mix
Peel Off
Boys Cross Fold
Trail Off
Crossfire
In-Roll Circulate
Quarter In
Right and Left Grand''',

  'Cross Run':
  '''Sides Touch a Quarter and Spread 
Circulate 
Centers Cross Run 
Centers Cross Run 
Acey Deucey and Spread 
Centers Run 
Centers Cross Run 
Trade and Roll 
Right and Left Thru 
Pass Thru 
Trade By 
Allemande Left 
Promenade Home''',

  'Cross Run 2':
  '''Heads Pass the Ocean 
Extend 
Spin the Top 
Boys Cross Run 
Center 4 Centers Cross Run 
Ends Cross Run 
As Couples Wheel and Deal 
Right and Left Thru 
Star Thru 
Centers Pass Thru 
Right and Left Thru 
Pass Thru 
Allemande Left 
Promenade Home''',

  'Double Star Thru' :
  '''Heads Pass Thru
Sides Separate
Double Star Thru
Bend the Line
Centers Double Star Thru
Quarter In
Centers Trade and Roll
Double Star Thru
Cast Off Three Quarters
Pass the Ocean
Swing Thru
Boys Run
Wheel and Deal
Allemande Left''',

  'Face In' :
  '''Sides Pair Off
Pass Thru
Face In
Right and Left Thru
Face In
Double Pass Thru''',

  'Facing Dancers' :
  '''Heads Touch a Quarter
Facing Dancers Pass Thru
Facing Dancers Pass Thru
Facing Dancers Pass Thru
Centers Peel and Trail
Girls Trade
Chain Reaction
Centers Trade
Split Counter Rotate
Circulate
Girls Run
Trade By
Touch a Quarter
Boys Run
Wheel and Deal
Centers Square Thru 3
Allemande Left''',

  'Fold' :
  '''Heads Pass the Ocean
Extend
Ends Fold
Peel Off
Boys Fold
Girls Turn Back
Peel and Trail
Spin the Top
Boys Fold
Trail Off
Boys Run
Girls Fold
Peel Off
Crossfire
In-Roll Circulate
Girls Run
Wheel and Deal
Centers Swap Around
Allemande Left''',

  'Half' :
  '''Heads Pass the Ocean
Extend
Half Split Circulate
Diamond Circulate
Flip the Diamond
Half Circulate
Boys Hinge
Chain Reaction
Wheel and Deal
Slide Thru
Acey Deucey
Wheel and Deal
Touch a Quarter
Boys Run
Bend the Line
Touch a Quarter
Circulate
Boys Run
Allemande Left''',

  'Half 2' :
  '''Sides Pass the Ocean 
Extend 
Centers Half Circulate 
Hourglass Circulate 
Cut the Hourglass 
Boys Run 
Circulate 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'Half Sashay' :
  '''Sides Half Sashay
Heads Lead Right
Touch a Quarter
Centers Trade
Girls Run
Pass Thru
Centers Half Sashay
Wheel and Deal
Boys Pass Thru
Slide Thru
Bend the Line
Touch a Quarter
Circulate
Boys Run
Right and Left Thru
Pass Thru
Trade By
Allemande Left''',

  'Sides' :
  '''Four Ladies Chain 3/4
Sides Pass the Ocean
Extend
Sides Trade
Circulate
Boys Run
Touch a Quarter
Circulate
Boys Run
Veer Left
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Hinge' :
  '''Heads Touch a Quarter
Sides Separate and Touch 1/4
Centers Hinge
Boys Pass Thru
Centers Hinge
Centers Hinge
Acey Deucey
Extend
Boys Run
Ferris Wheel
Centers Pass Thru
Allemande Left''',

  'Leaders' :
  '''Heads Touch a Quarter
Leads Turn Back
Veer Right
Leaders Wheel Around
Girls Pass Thru
Leads Trade
Load the Boat
Star Thru
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Outer' : '''Heads Pass the Ocean
Extend
Spin the Top
Outer 4 Turn Back
Hinge
Outer 4 Turn Back
Transfer the Column
Extend
Outer 6 Turn Back
Girls Wheel and Deal
Double Pass Thru
Track Two
Acey Deucey
Acey Deucey
Boys Run
Bend the Line
Touch a Quarter
Circulate
Boys Run
Allemande Left''',

  'Partner Tag' :
  '''Heads Touch a Quarter and Roll
Sides Partner Tag
Any Hand Swing Thru
Partner Tag
Trade By
Partner Tag
Wheel and Deal
Girls Pass Thru
Slide Thru
Circulate
Wheel and Deal
Allemande Left
Right and Left Grand''',

  'Quarter In' :
  '''Heads Lead Right
Quarter In
Pass Thru
Quarter In
Pass Thru
Trade By
Veer Left
1/4 In
Pass Thru
Girls Flutterwheel
Boys Trade
Double Pass Thru
Cloverleaf
Girls Pass Thru
Touch a Quarter
Boys Run
Wheel and Deal
Allemande Left''',

  'Roll' :
  '''Heads Lead Right and Roll
Sides Separate and Touch 1/4
Split Circulate and Roll
Scoot Back
Follow Your Neighbor
Flip the Diamond
Centers Circulate
Boys Run
Pass Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''',

  'Run' :
  '''Sides Pass the Ocean
Boys Run
Girls Run
Acey Deucey
Extend
Leaders Run
Pass Thru
Centers Boys Run
In-Roll Circulate
Belles Run
Any Hand Swing Thru
Wheel and Deal
Boys Pass Thru
Touch a Quarter
Boys Circulate
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Run 2' :
  '''Head Couples Pass Thru, Separate Around 2 to a Line 
Pass Thru 
Ends Cross Fold 
Pass Thru 
Ends Trade and Roll 
Touch a Quarter 
Boys Run 
Centers Face Out 
Allemande Left''',

  'Separate' :
  '''Heads Lead Right
Pass Thru
Ends Separate
Pass the Ocean
Hinge
Centers Trade
Centers Run
Ferris Wheel
Double Pass Thru
Girls Separate
Boys Chase Right
Hinge
Partner Tag
Trade By
Touch a Quarter
Circulate
Boys Run
Ferris Wheel
Centers Reverse Swap Around
Allemande Left''',

  'Single Wheel' :
  '''Heads Lead Right
Veer Left
Girls Single Wheel
Girls Touch 1/4
Cut the Diamond
Wheel Around
Single Wheel
Split Counter Rotate
Extend
Boys Single Wheel
Boys Face Right
Boys Hinge
Boys Single Wheel
Boys Left Touch 1/4
Boys Hinge
Girls Mix
Chain Reaction
Girls Single Wheel and Roll
Boys Hinge
Ends Pass Thru
Bend the Line
Pass the Ocean
Circulate
Boys Run
Ferris Wheel
Centers Reverse Swap Around
Allemande Left''',

  'Slide Thru' :
  '''Heads Pass Out
Slide Thru
Hinge
Step and Slide
Face In
Slide Thru
Horseshoe Turn
Touch a Quarter
Slip
Centers Run
Ferris Wheel
Centers Slide Thru
Centers Walk and Dodge
Clover and Slide Thru
Girls Run
Boys Slide Thru
Turn and Deal
Centers Chase Right
Centers Girls Cross
Allemande Left''',

  'Spread' :
  '''Heads Touch a Quarter and Spread
Centers Pass the Ocean
Flip the Diamond
In-Roll Circulate and Spread
Split Circulate
Recycle
Pass to the Center
Double Pass Thru and Spread
Hinge
Boys Run
Pass Thru
Wheel and Deal
Centers Reverse Swap Around
Allemande Left''',

  'Square the Set' :
  '''Heads Lead Right
Veer Left
Bend the Line
Pass Thru
Wheel and Deal
Centers Veer Left
Centers Bend the Line
Square the Set
Heads Pass the Ocean
Extend
Recycle
Touch a Quarter
Boys Run
Wheel and Deal
Zoom
Centers Square Thru 3
Allemande Left''',

  'Star Thru' :
  '''Heads Pass the Ocean
Extend
Quarter Thru
Centers Run
Bend the Line
Star Thru
Horseshoe Turn
Star Thru
Pass Thru
Wheel and Deal
Zoom
Centers Pass Thru
Allemande Left''',

  'Sweep 1/4' :
  '''Heads Lead Right
Veer Left
Wheel and Deal and Sweep a Quarter
Pass the Ocean
Boys Run
Wheel and Deal and Sweep a Quarter
Pass the Ocean
Recycle and Sweep a Quarter
Pass the Sea
Recycle and Sweep a Quarter
Touch a Quarter
Circulate
Boys Run
Allemande Left''',

  '3/4 Tag' :
  '''Heads Pass the Sea
Extend
3/4 Tag the Line
Centers 3/4 Tag the Line
Outer 6 Face Right
Cut the Hourglass
Turn and Deal
Slide Thru
Pass Thru
Wheel and Deal
Zoom
Centers Pass Thru
Allemande Left''',

  'Trailers' :
  '''Sides Pass the Ocean
Extend
Trailers Turn Back
Bend the Line
Touch a Quarter
Trailers Turn Back
Trade By
Touch a Quarter
Boys Trade
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Triple Star Thru' :
  '''Sides Lead Left
Veer Right
Leads Quarter In
Triple Star Thru
Clover and Right Roll to a Wave
Chain Reaction
Swing Thru
Boys Run
Ferris Wheel
Centers Reverse Swap Around
Allemande Left''',

  'Triple Trade' :
  '''Sides Pass the Ocean
Triple Trade
Acey Deucey
Extend
Spin the Top
Mix
Triple Trade''',

  'Turn Thru' :
  '''Heads Lead Right
Veer Left
Bend the Line
Ends Turn Thru
Hinge
Centers Trade
Centers Touch a Quarter
Ends Slide Thru
Ends Turn Back
Boys Turn Thru
Boys Run
Centers Walk and Dodge
Flutterwheel
Right and Left Thru
Allemande Left''',

  'ZigZag' :
  '''Sides Star Thru and Spread 
Touch a Quarter 
Zig Zig 
Left Touch a Quarter 
Zag Zag 
Pass Thru 
Wheel and Deal 
Zig 
Girls Run 
Boys Touch a Quarter 
Zag 
Zag Zig 
Zig 
Zig Zag 
Boys Face Out 
Heads Slide Thru 
Centers Chase Right 
Ferris Wheel 
Centers Cross Trail Thru 
Allemande Left''',

  'Zoom' :
  '''Sides Touch a Quarter
Boys Zoom
Centers Zoom
Ends Separate
Circulate
Centers Run
Ends Zoom
Circulate
Centers Pass the Ocean
Cut the Diamond
Boys Run
Wheel and Deal
Zoom
Centers Square Thru 3
Allemande Left''',

  'Split Square Thru' :
  '''Heads Start Split Square Thru 3
Partner Trade Boys Roll
Split Square Thru 3
Trade By and Roll
Split Square Thru 4
Trade By
Right and Left Thru
Star Thru
Pass Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',

  'Split Square Thru 2' :
  '''Sides Pass the Ocean 
Centers Lockit 
Split Square Thru 2 
Trade By and Roll 
Outer 4 Left Touch 
Left Split Square Thru 3 
Cast Off Three Quarters 
Pass Thru 
Bend the Line 
Star Thru 
Allemande Left''',

  'Left Split Square Thru' :
  '''Sides Start Left Split Square Thru
Right Roll to a Wave
Recycle
Girls Face In
Left Split Square Thru 3
Step and Slide
Boys Face In
Left Split Square Thru 5
Wheel and Deal
Double Pass Thru
Right Roll to a Wave
Swing Thru
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Square Thru' :
  '''Sides Square Thru 2
Left Square Thru 3
Right Roll to a Wave
Square Thru 3
Trade By
Pass and Roll
Mix
Left Square Thru 2
Half Tag
Swing Thru
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',

  'Cross Over Circulate' :
  '''Heads Lead Right While Sides Half Sashay
Veer Left
Boys Cross Over Circulate
Bend the Line
Brace Thru
Boys Cross Over Circulate
Girls Cross Over Circulate
Boys Cross Over Circulate
Girls Cross Over Circulate
Star Thru
Right and Left Thru
Pass Thru
Trade By
Allemande Left''',

  'Interlocked Diamond Chain Thru' :
  '''Heads Lead Right
Veer Left
Trade Circulate
Boys Hinge
Centers Switch the Wave
Interlocked Diamond Chain Thru
Centers Pass Thru
Girls Chase Right
Slide
Right and Left Grand ''',

  'Peel to a Diamond Chain Thru' :
  '''Heads Lead Right 
Girls Cross 
Peel to a Diamond Chain Thru 
Girls Run 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left
Promenade Home''',

  'Triangle Circulate' :
  '''Sides Pass the Ocean
Extend
Switch to an Hourglass
Outside Triangle Circulate
Points Turn Back
Tandem-Based Triangle Circulate
Flip the Hourglass
Centers Hinge
Inpoint Triangle Circulate
Outpoint Triangle Circulate
Lockit
Outside Triangle Circulate
Inside Triangle Circulate
Flip the Diamond
Recycle
Pass the Ocean
Circulate
Acey Deucey
Swing Thru
Recycle
Pass Thru
Centers Cross Trail Thru
Ends Turn Back
Allemande Left ''',

  'Squeeze' :
  '''Heads Slide Thru and Spread
Pass Thru
Wheel and Deal
Girls Squeeze
Girls Squeeze
Beaus Girls Cross
Girls Squeeze
Girls Squeeze
Girls Turn Back
Girls Squeeze
Girls Squeeze
Boys Separate
Girls Walk and Dodge
Any Hand Swing Thru
Tag the Line
Face Right
Boys Circulate
Ferris Wheel
Double Pass Thru
Ends Trade
Star Thru
Pass Thru
Wheel and Deal
Zoom
Centers Pass Thru
Pass Thru
Allemande Left ''',

  'Squeeze 2' :
  '''Heads Lead Right
Veer Left
Bend the Line
Touch a Quarter
Centers Circulate
Circulate
Girls Squeeze
Butterfly Circulate
Butterfly Circulate
Boys Squeeze
Circulate 1.5
Very Centers Squeeze
Galaxy Circulate
Flip the Galaxy
All 8 Swing Thru
All 8 Recycle
Heads Slide Thru
Slide Thru
Pass Thru
Wheel and Deal
Centers Reverse Swap Around
Allemande Left ''',

  'Zing' :
  '''Heads Pass the Ocean
Extend
Ends Zing
Centers Zing
Double Pass Thru
Boys Left Chase
Boys Zing
Clover and Pass Thru
Star Thru
Girls Trade
Wheel and Deal
Pass to the Center
Centers Pass Thru
Allemande Left''',

  'Zing 2' :
  '''Heads Lead Right 
Veer Left 
Zing 
Veer Right 
Zing 
Beaus Cross 
Boys Zig Zag 
Boys Zing 
Girls Right Roll to a Wave 
Ping Pong Circulate 
Girls Face Right 
Girls Zing 
Extend 
Circulate 
Boys Run 
Bend the Line 
Pass Thru 
Promenade Home''',

  'Squeeze the Hourglass' :
  '''Heads Lead Right 
Veer Left 
Switch to an Hourglass 
Squeeze the Hourglass 
Boys Turn Back 
Flip the Galaxy 
All 8 Left Swing Thru 
Boys Run 
All 8 Crossfire 
Boys Run 
All 4 Couples Right and Left Thru''',

  'Squeeze the Galaxy' :
  '''Heads Lead Right 
Veer Left 
Switch to an Hourglass 
Squeeze the Hourglass 
Squeeze the Galaxy 
Flip the Hourglass 
Girls Trade 
Circulate 
Ferris Wheel 
Centers Pass Thru 
Allemande Left 
Right and Left Grand''',

  'Butterfly' :
  '''Heads Lead Right 
Pass Thru 
Outer 4 Squeeze 
Centers Pass Thru 
Butterfly Pass Out 
Butterfly Clover and Left Chase 
Butterfly Centers Box Counter Rotate 
Butterfly Trade 
Butterfly Center Boys Run 
Butterfly Left Roll to a Wave 
Butterfly Magic Column Circulate 
Butterfly Boys Run 
Butterfly Belles Zoom 
Butterfly Double Pass Thru 
Boys Squeeze 
Pass Thru 
Trade By 
Star Thru 
Bend the Line 
Star Thru 
Pass Thru 
Allemande Left''',

  'O' :
  '''Sides Face Out 
O Pass Out 
O Centers Trade 
O Left Chase 
O Trade and Roll 
O Left Roll to a Wave 
O Magic Column Circulate 
O Facing Dancers Pass Thru 
Facing Dancers Slide In 
Trade By 
Touch a Quarter 
Acey Deucey 
Swing Thru 
Hinge 
Boys Run 
Ferris Wheel 
Centers Pass Thru 
Allemande Left''',

  'Pass Thru' :
  '''Sides Pass the Ocean 
Extend 
Pass Thru 
Centers Pass the Ocean 
Clover and Pass Thru 
Allemande Left''',

  'Pass Thru 2' :
  '''Side Ladies Chain 
Sides Dixie Style to a Wave 
Heads Half Sashay 
Boys Pass Thru 
Centers Crossfire 
Facing Dancers Pass Thru 
Right Roll to a Wave 
Extend 
Boys Pass Thru 
Horseshoe Turn 
Star Thru 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'To A Wave' :
  '''Heads Square Chain Thru to a Wave 
Extend 
Recycle 
Square Chain the Top to a Wave 
Hinge 
Boys Run 
Load the Boat Centers to a Wave 
Ping Pong Circulate 
Centers Recycle 
Half Sashay 
Centers Square Thru 3 
Allemande Left''',

  'Kick Off' :
  '''Heads Lead Right 
Boys Kick Off 
Centers Kick Off 
Double Pass Thru 
Lead Boys Kick Off 
Centers Right Roll to a Wave 
Cut the Diamond 
Mini-Busy 
Head Boys Kick Off 
Flip the Diamond 
Wheel and Deal 
Pass Thru 
Trade By 
Touch a Quarter 
Hinge 
Acey Deucey 
Swing Thru 
Boys Run 
Circulate 
Wheel and Deal 
Allemande Left''',

  'Twist And' :
  '''Heads Lead Right 
Star Thru 
Twist and Pass Out 
Centers In 
Twist and Right and Left Thru 
Split Square Thru 3 
Twist and Left Touch 1/4 
Girls Cross 
Hinge 
Grand Swing Thru 
Recycle 
Bend the Line 
Pass Thru 
Wheel and Deal 
Centers Pass Thru 
Allemande Left''',

  'Twist And 2' :
  '''Heads Lead Right 
Veer Left 
Bend the Line 
Twist and Split Dixie Sashay 
Boys Trade 
Twist and Split Square Thru 3 
Twist and Split Dixie Diamond 
Flip the Diamond 
Hinge 
Swing Thru 
Acey Deucey 
Boys Run 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'As Couples' :
  '''Heads Star Thru and Spread 
As Couples Left Square Chain Thru to a Wave  
As Couples Switch the Wave and Roll 
As Couples Reverse Dixie Style to a Wave 
As Couples Alter the Wave 
As Couples Recycle 
Star Thru 
Leaders Trade 
Allemande Left''',

  'Crazy' :
  '''Heads Lead Right 
Touch a Quarter 
Crazy Counter Rotate Twice 
Crazy Circulate 
1/2 Crazy Circulate 
1/2 Crazy Counter Rotate Twice 
Boys Run 
Bend the Line 
3/4 Crazy Flutterwheel 
Pass the Ocean 
Acey Deucey 
Swing Thru 
Boys Run 
Circulate 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'Catch' :
  '''Heads Lead Right 
Catch 2 
Boys Run 
Left Catch 3 
In-Roll Circulate 
Boys Run 
Wheel and Deal 
Centers Pass Thru 
Allemande Left''',

  'Split Catch' :
  '''Heads Right and Left Thru 
Left Split Catch 3 
Boys Run 
Circulate 
Wheel and Deal 
Ends Quarter In 
Split Catch 4 
Coordinate 
Bend the Line 
Star Thru 
Double Pass Thru 
Right Roll to a Wave 
Quarter Thru 
Boys Run 
Bend the Line 
Star Thru 
Pass Thru 
Centers Reverse Swap Around 
Ends Trade 
Allemande Left''',

  'Vertical Tag' :
  '''Heads Lead Right 
Veer Left 
Vertical 1/4 Tag 
Extend 
Boys Run 
Vertical 1/2 Tag 
Girls Run 
Vertical 3/4 Tag 
Clover and Hinge 
Girls Walk and Dodge 
Star Thru 
Bend the Line 
Vertical Left 1/4 Tag 
Chain Reaction 
Vertical Left 1/4 Tag 
Extend 
Reverse Explode 
Vertical Left 1/4 Tag 
Extend 
Girls Run 
Wheel and Deal 
Centers Pass Thru 
Allemande Left''',

  'Adjust' :
  '''Heads Pass the Ocean 
Extend 
Hinge 
Scoot Chain Thru Boys to a Wave 
Adjust to 1/4 Tag 
Facing Dancers Pass Thru 
Chain Reaction 
Centers Pass the Ocean 
Flip the Diamond 
Circulate 
Bend the Line 
Reverse Flutterwheel 
Star Thru 
Cloverleaf 
Centers Pass Thru 
Star Thru 
Pass Thru 
Wheel and Deal 
Centers Pass Thru 
Right and Left Thru 
Allemande Left''',

  'Bend the Line' :
  '''Heads Pass the Ocean 
Extend 
Circulate 1.5 
Boys Run 
Bend the Line 
Centers Star Thru 
Centers Pass Thru 
Allemande Left''',

  'Diamond Circulate' :
  '''Sides Pass the Ocean 
Extend 
Hinge 
Acey Deucey Once and a Half 
Grand Swing Thru 
Girls Diamond Circulate 
Center 4 Diamond Circulate 
Boys Diamond Circulate 
Girls Mix 
Half Grand Swing Thru 
Girls Turn Back 
Heads Diamond Circulate 
Boys Turn Back 
Girls Flip the Diamond 
Heads Diamond Circulate 
Sides Diamond Circulate 
Boys Recycle 
Girls Hinge 
Boys Pass Thru 
Boys Chase Right 
Circulate 
Boys Run 
Centers Pass Thru 
Veer Left 
Wheel and Deal 
Allemande Left''',

  'Tandem' :
  '''Sides Pass the Ocean 
Extend 
Tandem Left Swing Thru  
Tandem Boys Run  
Tandem Turn Back  
Tandem Crossfire 
Tandem Peel and Trail  
Tandem Single Wheel  
Tandem Pass Out  
Tandem Partner Tag  
Tandem Wheel Around  
Tandem Pass Thru 
Tandem Vertical Tag  
Zig Zag 
Recycle 
Centers Pass Thru 
Quarter In 
Allemande Left''',

  'Bounce' :
  '''Heads Lead Right 
Veer Left 
Bounce the Ends 
Circulate 
Boys Run 
Veer Right 
Bounce the Leaders 
Centers Pass Thru 
Veer Left 
Fan the Top 
Bounce the Centers 
Swing Thru 
Boys Run 
Wheel and Deal 
Zoom 
Centers Pass Thru 
Allemande Left
Promenade Home''',

  'Bounce 2' :
  '''Heads Lead Right 
Veer Left 
Bounce the Boys and Roll 
Split Circulate 
Centers Girls Run 
Centers Boys Run 
Siamese Box Circulate 
Boys Trade and Roll 
Center 4 Left Chase 
Girls Run 
Centers Pass Thru 
Veer Right 
Bounce the Boys and Roll 
Split Circulate 
Boys Trade and Roll 
Center 4 Right Roll to a Wave 
Chain Reaction 
Hinge 
Swing Thru 
Circulate 
Promenade Home''',

  'Siamese' :
  '''Heads Lead Right 
Veer Left 
Fan the Top 
Girls Trade 
Sides Single Wheel 
Sides Turn Back 
Siamese Swing Thru  
Siamese Swing Thru  
Siamese Recycle  
Siamese Pass Thru  
Siamese Chase Right  
Siamese Cross  
Siamese Right Roll to a Wave  
Siamese Centers Hinge 
Siamese Diamond Circulate 
Siamese Flip the Diamond 
Siamese Wheel and Deal 
Siamese Right and Left Thru 
Siamese Touch 1/4 
Sides Half Zoom 
Hinge and Roll 
Face Out 
Wheel and Deal 
Zoom 
Centers Swap Around 
Heads Half Sashay 
Allemande Left''',

  'Transfer And' :
  '''Sides Pair Off 
Star Thru 
Left Touch a Quarter 
Transfer and Walk and Dodge 
Centers Run and Roll 
Double Pass Thru 
Belles Run 
Transfer and Follow Your Neighbor 
Extend 
Split Counter Rotate 
Head Boys Face In 
Transfer and Flip the Diamond 
Centers Girls Run 
Extend 
Boys Run 
Acey Deucey 
Circulate 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'Phantom' :
  '''Heads Star Thru and Spread 
Boys Bend the Line 
Phantom Right and Left Thru  
Phantom Pass the Ocean  
Phantom Centers Run  
Phantom Couples Circulate  
Phantom Cast Off 3/4  
Phantom Pass Thru  
Phantom Left Chase  
Phantom Left 1/4 Thru  
Phantom Centers Trade 
Girls Hinge 
Recycle 
Star Thru 
Girls Circulate 
Ferris Wheel 
Centers Reverse Swap Around 
Allemande Left''',

  'Center 6 Circulate' :
  '''Heads Lead Right 
Star Thru 
Touch a Quarter 
Circulate 1.5 
Center 6 Circulate 
Center 6 Circulate 1.5 
Outer 4 Bend the Line 
Face In 
Left Touch a Quarter 
Circulate 1.5 
Center 6 Circulate 1.5 
Center 4 Hinge 
Very Centers Run 
Wheel and Deal 
Circulate 
Turn and Deal 
Center 4 Right Roll to a Wave 
Center 4 Step Thru 
Allemande Left''',

  'Little' :
  '''Sides Pass the Ocean 
Little Outsides Out 
Centers Hinge 
Little Points As You Are 
Quarter Tag 
In Little 
3/4 Tag the Line 
Boys Run 
Very Centers Turn Back 
Little 
Tag the Line Face In 
Touch a Quarter 
Boys Run 
Trade 
Centers Pass Thru 
Allemande Left''',

  'Slip' :
  '''Sides Pass the Ocean 
Slip 
Extend 
Slip 
Boys Run 
Slip 
Bend the Line
Star Thru 
Pass to the Center 
Centers Flutterwheel 
Centers Pass Thru 
Allemande Left''',

  'Turn and Deal' :
  '''Heads Pass the Ocean 
Extend 
Fan the Top 
Head Boys Turn Back 
Turn and Deal 
Left Turn and Deal 
Head Boys Cross 
Boys Run 
Centers Pass Thru 
Star Thru 
Touch a Quarter 
Circulate 
Boys Run 
Allemande Left''',

  'Truck' :
  '''Heads Star Thru and Spread 
Touch a Quarter 
Circulate 
Boys Truck 
O Circulate  
O Circulate  
Girls Truck 
Coordinate 
Bend the Line and Roll 
Circulate 
Boys Reverse Truck 
O Circulate Twice 
Girls Reverse Truck 
Cross 
Trade By 
Touch a Quarter 
In-Roll Circulate 
Boys Run 
Ferris Wheel 
Centers Pass Thru 
Allemande Left''',

/*    Does not work, Concentric Right Roll to a Wave fails
  'Concentric' :
  '''Heads Pass the Ocean
Extend
Circulate 1.5
Concentric Flip the Diamond
Concentric Left Swing Thru
Concentric Recycle
Double Pass Thru
Concentric Left Chase
Concentric Walk and Dodge
Concentric Right Roll to a Wave
Concentric Mix
Concentric Explode the Wave
Concentric Chase Right
Concentric Walk and Dodge
Bend the Line
Touch a Quarter
Circulate
Boys Run
Centers Pass Thru
Right and Left Thru
Pass Thru
Allemande Left''',
 */

  'Checkpoint' :
  '''Heads Pass the Ocean 
Extend 
Swing Thru 
Fan the Top 
Boys Hinge 
Checkpoint Walk and Dodge By Explode the Wave  
Hinge 
Checkpoint Ah So by Swing Thru 
Centers Lockit 
Centers Mix 
Checkpoint Trade By Triangle Circulate 
Girls Hinge 
Checkpoint Recycle By Explode the Wave 
Centers Run and Roll 
Face Out 
Bend the Line 
Star Thru 
Pass Thru 
Allemande Left''',

  'Peel to a Diamond' :
  '''Heads Lead Right 
Veer Left 
Peel to a Diamond 
Very Centers Hinge 
Checkpoint Box Counter Rotate By Flip the Diamond 
Center 6 Circulate 
Boys Run 
As Couples Extend 
Bend the Line 
Pass the Ocean 
Boys Quarter In 
Peel to a Diamond 
Crossfire 
Circulate 
Girls Run 
Bend the Line 
Star Thru 
Right and Left Thru 
Pass Thru 
Allemande Left''',

  'Wheel Around' :
  '''Heads Square Thru 4 
Dixie Style to a Wave 
Boys Trade 
Left Swing Thru 
Girls Run 
Wheel Around 
Wheel and Deal 
Pass Thru 
Centers Wheel Around 
Centers Run 
Boys Wheel Around 
Circulate 
Bend the Line 
Pass Thru
Bend the Line 
Star Thru 
Zoom 
Ends Trade 
Allemande Left''',

  'Stagger' :
  '''Sides Star Thru 
Centers Pass Thru 
Boys Truck 
Stagger Pass Thru  
Stagger Chase Right  
Stagger Split Counter Rotate 
Stagger Trade By 
Stagger Square Thru 2 
Stagger Cloverleaf 
Stagger Centers Pass Thru 
Stagger Chain the Square 
Stagger Circulate 
Stagger Boys Run 
Stagger Centers Pass Thru 
Girls Reverse Truck 
Star Thru 
Pass Thru 
Wheel and Deal 
Centers Pass Thru 
Allemande Left''',

  'Hocus Pocus' :
  '''Heads Touch a Quarter and Spread 
Hocus Pocus 
Turn Back 
Hocus Pocus 
Centers Trade and Roll 
Hocus Pocus 
Hocus Pocus 
Centers Touch a Quarter 
Left Quarter Thru 
Girls Run 
Right and Left Thru 
Pass Thru 
Wheel and Deal 
Centers Square Thru 3 
Allemande Left''',

  'Finish' :
  '''Sides Lead Right 
Veer Left 
Bend the Line 
Pass Thru 
Finish Right and Left Thru  
Pass the Ocean 
Finish Motivate 
Girls Run 
Finish Load the Boat 
Star Thru 
Bend the Line 
Right and Left Thru 
Pass Thru 
Wheel and Deal 
Centers Pass Thru 
Allemande Left''',

  'Anything Concept' :
  '''Heads Lead Right 
Touch 1/4 Motivate 
Split Counter Coordinate 
Bend the Line 
Pass Thru Percolate 
Ends Run and Roll 
Belles Run 
Split Counter Perk Up 
Ferris Wheel 
Centers Square Thru 3 
Allemande Left''',

  'Explode' :
  '''Heads Lead Right 
Veer Left 
Sides Hinge 
Sides Explode 
Fan the Top 
Belles Run 
Boys Explode 
Girls Explode the Wave 
Pass Thru 
Trade By 
Star Thru 
Boys Circulate 
Ferris Wheel 
Centers Pass Thru 
Allemande Left''',

  'Triple Box' :
  '''Heads Lead Right 
Triple Box Left Chase  
Triple Box Walk and Dodge  
Triple Box Right Roll to a Wave  
Triple Wave Swing Thru  
Triple Wave 1/4 In  
Triple Column Pass and Roll  
Triple Box Hinge 
Triple Wave Recycle 
Triple Box Pass Thru 
Touch a Quarter 
Quarter Thru 
Boys Run 
Bend the Line 
Touch a Quarter 
Circulate 
Boys Run 
Allemande Left''',

  'Start' :
  '''Heads Lead Right 
Boys Cross 
Centers U-turn Back 
Facing Dancers Start Pass and Roll 
Centers Trade 
Girls Start Swing Thru 
Circulate 
Heads Trade 
Right and Left Grand''',

  'Cast Back' :
  '''Heads Pair Off 
Pass Thru 
Outer 4 Cross Cast Back 
Star Thru 
Centers Pass Thru 
Pass Thru 
Triple Box Pass Thru 
Outer 4 Cast Back 
Butterfly Pass Thru 
Outer 4 Squeeze 
Checkmate 
Turn and Deal 
Centers Pass Thru 
Star Thru 
Pass Thru 
Wheel and Deal 
Double Pass Thru 
Outer 4 Trade 
Allemande Left''',

  'Individually Roll' :
  '''Heads As Couples Touch 1/4 
As Couples Follow Your Neighbor and Individually Roll 
Girls Pass Thru 
Touch a Quarter 
Boys Run 
As Couples Hinge and Individually Roll 
Adjust to Boxes 
Double Pass Thru 
Tandem Turn Back and Individually Roll 
Cast Off Three Quarters 
Pass the Ocean 
Hinge 
Centers Run 
Couples Circulate 
Girls Trade 
Bend the Line 
Star Thru 
Pass Thru 
Allemande Left''',

  'Horseshoe Turn' :
  '''Heads Touch a Quarter 
Sides Trade 
Horseshoe Turn 
Center 4 Face In 
Outer 4 U-turn Back 
Horseshoe Turn 
Centers Run and Roll 
Double Pass Thru 
Ends U-turn Back 
Allemande Left''',

  'Rotate (C-2)' :
  '''Heads Lead Right 
Veer Left 
Bend the Line 
Pass Thru 
Rotate 1/4 
Wheel and Deal 
Rotate 1/2 
Rotate 3/4 
Wheel and Deal 
Touch a Quarter 
Circulate 
Boys Run 
Allemande Left''',

  'Rotary' :
  '''Heads Lead Right 
Rotary Explode and Right and Left Thru 
Cycle and Wheel 
Rotary Recycle 
Centers Left Touch a Quarter 
Quarter Thru 
Hinge 
Centers Circulate 
Boys Run 
Trade Circulate 
Boys Run 
Right and Left Grand''',

  'Outer 6 Circulate' :
  '''Heads Pass the Ocean 
Extend 
Switch to an Hourglass 
Outer 6 Circulate 
U-turn Back 
Outer 6 Circulate 
Cut the Hourglass 
Mini-Busy 
Outer Girls Run 
Outer 6 Circulate 
Boys Mix While Girls Turn Back 
Outer 6 Circulate 
Facing Dancers Pass Thru 
Clover and Crossfire 
Girls Run 
Boys Touch a Quarter 
Boys Run 
Left Turn and Deal 
Right and Left Thru 
Allemande Left''',

  'Ignore' :
  '''Heads Lead Right 
Ignore the Head Girls Wheel Thru  
Boys Trade and Roll 
Girls U-turn Back 
Side Boys Run and Roll 
Outer 4 Counter Rotate 
Circulate 
Ignore the Side Boys Turn Back 
Ignore the Side Girls Tally Ho 
Girls Fold 
Side Boys Run 
Double Pass Thru 
Right Roll to a Wave 
Hinge 
Swing Thru 
Boys Run 
Circulate 
Ferris Wheel 
Centers Pass Thru 
Allemande Left''',

  'Split Circulate' :
  '''Heads Touch a Quarter 
Girls Touch a Quarter 
Split Circulate 
Split Circulate 
Split Circulate 
Split Circulate 
U-turn Back 
Split Circulate 
Split Circulate 
Split Circulate 
Split Circulate 
Girls Partner Tag 
Clover and Left 1/4 Thru 
Centers Recycle 
Double Pass Thru 
Trade and Roll 
Star Thru 
Centers Square Thru 3 
Allemande Left''',

  'Grand Swing Thru' :
  '''Heads Pass the Ocean 
Extend 
Acey Deucey Once and a Half 
Grand Swing Thru 
U-turn Back 
Grand Left Swing Thru 
Grand Swing Thru 
Boys Diamond Circulate 
Those Who Can Hinge 
Boys Wheel and Deal While Girls Trade and Roll 
Boys Pass Thru 
Split Square Thru 2 
Trade By 
Star Thru 
Boys Trade 
Ferris Wheel 
Centers Pass Thru 
Allemande Left''',

  'Ripple' :
  '''Heads Lead Right 
Veer Left 
Head Boys Ripple the Line 
Head Girls Ripple 2 
Pass the Ocean 
Fan the Top 
Very Ends Ripple 5 
Centers Run 
Head Boys Right Ripple 2 
Wheel and Deal 
Turn and Deal 
Center 4 U-turn Back and Pass Thru 
Allemande Left 
Promenade Home''',

  'While Others' :
  '''Heads Touch a Quarter 
Facing Dancers Pass Thru While Others Turn Back 
Boys Run 
Centers Boys Cross While Others Turn Back 
Girls Touch a Quarter While Others Zoom 
Girls Hinge 
Boys Half Zoom 
Any Hand Quarter Thru 
Chase Right 
Fan the Top 
Centers Hinge While Others Turn Back 
Diamond Circulate 
Flip the Diamond 
Recycle 
Pass the Ocean 
Circulate 
Boys Run 
Wheel and Deal 
Centers Flutterwheel 
Centers Pass Thru 
Allemande Left 
Promenade Home'''


};

void main() {
  group('Sequence Test Runner', () {
    FlutterDriver driver;
    final settingsTapper = find.byValueKey('Settings');
    final fastTapper = find.byValueKey('Fast');
    final sequencerTapper = find.byValueKey('Sequencer');
    final sequencerInputTapper = find.byValueKey('Tap to start Sequence');
    final sequencerInput = find.byValueKey('Sequencer Input');
    final sequencerSubmit = find.byValueKey('Submit Call');
    final errorText = find.byValueKey('Test Error Text');
    final sequencerReset = find.byValueKey('Reset');
    final testsFinished = <String>[];
    final testsFailed = testSequences.keys.toSet();

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
      print('All sequencer tests complete.');
      if (testsFailed.isNotEmpty) {
        print('These tests failed:');
        for (final testName in testsFailed)
          print('    $testName');
        print('Total ${testsFailed.length} tests.');
      }
    });

    test('setup', () async {
      await driver.waitFor(settingsTapper);
      await driver.tap(settingsTapper);
      await driver.waitFor(fastTapper);
      await driver.tap(fastTapper);
      await driver.tap(sequencerTapper);
      await driver.waitFor(sequencerInputTapper);
      await driver.tap(sequencerInputTapper);
      await driver.waitFor(sequencerInput);
    });

    for (var testName in testSequences.keys) {
      test(testName, () async {
        await driver.runUnsynchronized(() async {
          await driver.tap(sequencerReset);
          for (var call in testSequences[testName].split('\n')) {
            await driver.tap(sequencerInput);
            await driver.enterText(call);
            await driver.tap(sequencerSubmit);
            expect(await driver.getText(errorText), ' ');
          }
          await driver.waitUntilNoTransientCallbacks();
          testsFinished.add(testName);
          testsFailed.remove(testName);
        });
      });
    }
  });

}