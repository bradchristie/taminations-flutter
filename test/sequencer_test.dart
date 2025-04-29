// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'package:taminations/sequencer/sequencer_model.dart';
import 'package:taminations/settings.dart';
import 'package:taminations/tam_utils.dart';

class TestSequence {

  final String name;
  final String sequence;
  final String result;

  TestSequence(this.name,this.sequence,this.result);

}

void main() async {

  //  This is necessary else the 1st test crashes
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  for (var test in testSequences) {
    testWidgets(test.name, (WidgetTester tester) async {
      await tester.runAsync(() async {
        await TamUtils.init();
        Settings.mockInit();
        final model = SequencerModel();
        model.setStartingFormation('Static Square');
        await model.paste(test.sequence);
        expect(model.errorString.trim(), test.result);
      });
    });
  }
  print('All Tests Completed');

}

final testSequences = [

  TestSequence('Back Away',
  '''Heads Right and Left Thru and Back Away
Sides Pass the Ocean''',''),

  TestSequence('Beaus Run',
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
Allemande Left''',''),

  TestSequence('Belles Run',
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
Allemande Left''',''),

  TestSequence('Box Counter Rotate',
  '''Heads Move In and Right and Left Thru
Centers Box Counter Rotate
Double Pass Thru ''',''),

  TestSequence('Box the Gnat',
  '''Heads Box the Gnat
Sides Separate and Box the Gnat
Centers Pass In
Slide Thru
Cloverleaf
Zoom
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Brace Thru',
  '''Heads Pass the Ocean
Extend
Leads Turn Back
Brace Thru
Slide Thru
Right and Left Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Brace Thru 2',
  '''Heads Star Thru and Spread
Pass the Ocean
Brace Thru
Veer Left
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Brace Thru 3',
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
Allemande Left ''',''),

  TestSequence('California Twirl',
  '''Sides Star Thru
Centers California Twirl
Star Thru
Right and Left Thru ''',''),

  TestSequence('Center 6',
  '''Heads Pass the Ocean
Center 6 Turn Back
Acey Deucey ''',''),

  TestSequence('Circle By',
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
Allemande Left''',''),

  TestSequence('Cloverleaf',
  '''Heads Pair Off and Spread
Circulate
Centers Cloverleaf
Centers Pass Thru and Cloverleaf
Centers Pass Thru
Allemande Left
Promenade Home''',''),

  TestSequence('Cloverleaf 2',
'''Heads Pass the Ocean While Sides Trade
Outer 4 Cloverleaf While Centers Fan the Top
Centers Recycle
Zoom
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Clover And',
  '''Heads Move In and Pass Thru
Clover and Touch 1/4
Centers Run
Centers Touch a Quarter
Out-Roll Circulate
Girls Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Clover And 2',
'''Sides Move In and Pass Thru
Clover and Pass Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Courtesy Turn',
  '''Heads Move In and Pass Thru
Centers Courtesy Turn and Back Away
Sides Star Thru
Double Pass Thru
Ends Courtesy Turn
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Cross',
  '''Heads Lead Right
Boys Cross
Cross
Trade By
Girls Cross
Circulate
Boys Run
Veer Left
Bend the Line
Centers Girls Cross''',''),

  TestSequence('Cross 2',
  '''Heads Touch a Quarter and Cross
Slide Thru
Step and Slide
Outsides Cloverleaf
Split Square Thru
Trade By
Veer Left
Bend the Line
Square Thru 2
Allemande Left''',''),

  TestSequence('Cross Fold',
  '''Heads Pass the Ocean
Extend
Girls Cross Fold
Boys Trade and Roll and Roll
Adjust to Columns
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
Right and Left Grand''',''),

  TestSequence('Cross Run',
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
Promenade Home''',''),

  TestSequence('Cross Run 2',
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
Promenade Home''',''),

  TestSequence('Double Star Thru',
  '''Heads Move In and Pass Thru
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
Allemande Left''',''),

  TestSequence('Face In',
  '''Sides Pair Off
Pass Thru
Face In
Right and Left Thru
Face In
Double Pass Thru''',''),

  TestSequence('Facing Dancers',
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
Allemande Left''',''),

  TestSequence('Fold',
  '''Heads Pass the Ocean
Extend
Ends Fold
Peel Off
Boys Fold
Girls Turn Back
Adjust to Columns
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
Allemande Left''',''),

  TestSequence('Half',
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
Allemande Left''',''),

  TestSequence('Half 2',
  '''Sides Pass the Ocean
Extend
Centers Half Circulate
Hourglass Circulate
Cut the Hourglass
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Half Sashay',
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
Allemande Left''',''),

  TestSequence('Sides',
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
Allemande Left''',''),

  TestSequence('Hinge',
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
Allemande Left''',''),

  TestSequence('Leaders',
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
Allemande Left''',''),

  TestSequence('Outer', '''Heads Pass the Ocean
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
Allemande Left''',''),

  TestSequence('Partner Tag',
  '''Heads Move In Touch a Quarter and Roll
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
Right and Left Grand''',''),

  TestSequence('Quarter In',
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
Allemande Left''',''),

  TestSequence('Roll',
  '''Heads Move In Lead Right and Roll
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
Allemande Left''',''),

  TestSequence('Run',
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
Allemande Left''',''),

  TestSequence('Run 2',
  '''Head Couples Pass Thru Separate Around 2 to a Line
Pass Thru
Ends Cross Fold
Pass Thru
Ends Trade and Roll
Touch a Quarter
Boys Run
Centers Face Out
Allemande Left''',''),

  TestSequence('Separate',
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
Allemande Left''',''),

  TestSequence('Single Wheel',
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
Allemande Left''',''),

  TestSequence('Slide Thru',
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
Allemande Left''',''),

  TestSequence('Spread',
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
Allemande Left''',''),

  TestSequence('Square the Set',
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
Allemande Left''',''),

  TestSequence('Star Thru',
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
Allemande Left''',''),

  TestSequence('Sweep 1/4',
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
Allemande Left''',''),

  TestSequence('3/4 Tag',
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
Allemande Left''',''),

  TestSequence('Trailers',
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
Allemande Left''',''),

  TestSequence('Triple Star Thru',
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
Allemande Left''',''),

  TestSequence('Triple Trade',
  '''Sides Pass the Ocean
Triple Trade
Acey Deucey
Extend
Spin the Top
Mix
Triple Trade''',''),

  TestSequence('Triple Trade 2',
'''Sides Pass the Ocean
Extend
Acey Deucey Once and a Half
Triple Trade
Center Diamond Cut the Diamond While Others Hinge
Boys Run
Extend
Centers Circulate
Boys Run
Pass Thru
Quarter In
Right and Left Grand''',''),

  TestSequence('Turn Thru',
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
Allemande Left''',''),

  TestSequence('ZigZag',
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
Allemande Left''',''),

  TestSequence('Zoom',
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
Allemande Left''',''),

  TestSequence('Split Square Thru',
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
Allemande Left''',''),

  TestSequence('Split Square Thru 2',
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
Allemande Left''',''),

  TestSequence('Left Split Square Thru',
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
Allemande Left''',''),

  TestSequence('Square Thru',
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
Allemande Left''',''),

  TestSequence('Square Thru on 3 RLG',
'''Heads Lead Right
Ladies Chain
Half Sashay
Square Thru On the 3rd Hand Right and Left Grand''', ''),

  TestSequence('Cross Over Circulate',
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
Allemande Left''',''),

  TestSequence('Interlocked Diamond Chain Thru',
  '''Heads Lead Right
Veer Left
Trade Circulate
Boys Hinge
Centers Switch the Wave
Interlocked Diamond Chain Thru
Centers Pass Thru
Girls Chase Right
Slide
Right and Left Grand''',''),

  TestSequence('Peel to a Diamond Chain Thru',
  '''Heads Lead Right
Girls Cross
Peel to a Diamond Chain Thru
Girls Run
Ferris Wheel
Centers Square Thru 3
Allemande Left
Promenade Home''',''),

  TestSequence('Triangle Circulate',
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
Allemande Left ''',''),

  TestSequence('Squeeze',
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
Allemande Left ''',''),

  TestSequence('Squeeze 2',
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
Allemande Left''',''),

  TestSequence('Zing',
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
Allemande Left''',''),

  TestSequence('Zing 2',
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
Promenade Home''',''),

  TestSequence('Squeeze the Hourglass',
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
All 4 Couples Right and Left Thru''',''),

  TestSequence('Squeeze the Galaxy',
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
Right and Left Grand''',''),

  TestSequence('Butterfly',
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
Allemande Left''',''),

  TestSequence('O',
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
Allemande Left''',''),

  TestSequence('Pass Thru',
  '''Sides Pass the Ocean
Extend
Pass Thru
Centers Pass the Ocean
Clover and Pass Thru
Allemande Left''',''),

  TestSequence('Pass Thru 2',
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
Allemande Left''',''),

  TestSequence('To A Wave',
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
Allemande Left''',''),

  TestSequence('Kick Off',
  '''Heads Lead Right
Boys Kick Off
Centers Kick Off
Double Pass Thru
Lead Boys Kick Off
Centers Right Roll to a Wave
Adjust to Diamonds
Cut the Diamond
Mini-Busy
Head Boys Kick Off
Adjust to Diamonds
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
Allemande Left''',''),

  TestSequence('Twist And',
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
Allemande Left''',''),

  TestSequence('Twist And 2',
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
Allemande Left''',''),

  TestSequence('As Couples',
  '''Heads Star Thru and Spread
As Couples Left Square Chain Thru to a Wave
As Couples Switch the Wave and Roll
As Couples Reverse Dixie Style to a Wave
As Couples Alter the Wave
As Couples Recycle
Star Thru
Leaders Trade
Allemande Left''',''),

  TestSequence('Crazy',
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
Allemande Left''',''),

  TestSequence('Catch',
  '''Heads Lead Right
Catch 2
Boys Run
Left Catch 3
In-Roll Circulate
Boys Run
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Split Catch',
  '''Heads Move In and Right and Left Thru
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
Allemande Left''',''),

  TestSequence('Vertical Tag',
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
Allemande Left''',''),

  TestSequence('Bend the Line',
  '''Heads Pass the Ocean
Extend
Circulate 1.5
Boys Run
Bend the Line
Centers Star Thru
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Diamond Circulate',
  '''Sides Pass the Ocean
Extend
Hinge
Acey Deucey Once and a Half
Grand Swing Thru
Girls Diamond Circulate
Center Diamond Diamond Circulate
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
Allemande Left''',''),

  TestSequence('Tandem',
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
Allemande Left''',''),

  TestSequence('Bounce',
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
Promenade Home''',''),

  TestSequence('Bounce 2',
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
Promenade Home''',''),

  TestSequence('Siamese',
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
Adjust to Lines
Wheel and Deal
Zoom
Centers Swap Around
Heads Half Sashay
Allemande Left''',''),

  TestSequence('Siamese 2',
'''Heads Star Thru
Double Pass Thru
Girls Peel Off
Siamese Box Circulate
Siamese 1/2 Box Circulate
Siamese Diamond Circulate
Siamese Diamond Circulate
Siamese Flip the Diamond
Siamese Boys Run
Girls Single Wheel
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Transfer And',
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
Allemande Left''',''),

  TestSequence('Phantom',
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
Allemande Left''',''),

  TestSequence('Center 6 Circulate',
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
Allemande Left''',''),

  TestSequence('Little',
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
Allemande Left''',''),

  TestSequence('Slip',
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
Allemande Left''',''),

  TestSequence('Turn and Deal',
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
Allemande Left''',''),

  TestSequence('Truck',
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
Allemande Left''',''),

/*    Does not work, Concentric Right Roll to a Wave fails
  TestSequence('Concentric',
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
Allemande Left''',''),
 */

  TestSequence('Concentric 1',
'''Heads Pass the Ocean
Extend
Centers Box Counter Rotate
Concentric Circulate
Concentric Walk and Dodge
Boys Bend and Pass Thru
Hinge
Boys Run
Wheel and Deal
Centers Pass Thru
Box the Gnat
Right and Left Grand''', ''),

  TestSequence('Checkpoint',
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
Allemande Left''',''),

  TestSequence('Peel to a Diamond',
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
Allemande Left''',''),

  TestSequence('Wheel Around',
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
Allemande Left''',''),

  TestSequence('Stagger',
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
Allemande Left''',''),

  TestSequence('Hocus Pocus',
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
Allemande Left''',''),

  TestSequence('Finish',
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
Allemande Left''',''),

  TestSequence('Anything Concept',
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
Allemande Left''',''),

  TestSequence('Explode',
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
Allemande Left''',''),

  TestSequence('Triple Box',
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
Allemande Left''',''),

  TestSequence('Triple Box 2',
'''Sides Pass the Ocean
Extend
Triple Box Circulate
Triple Box Walk and Dodge
Triple Box Chase Right
Left Swing Thru
Recycle
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Triple Box 3',
'''Heads Pair Off
Pass Thru
Triple Box Star Thru
Triple Box Pass the Ocean
Triple Wave Swing Thru
Triple Wave Hinge
Boys Run
Triple Box Pass Thru
Triple Box Shakedown
Trade By
Cross Trail Thru
Trade By
Allemande Left''',''),

  TestSequence('Start',
  '''Heads Lead Right
Boys Cross
Centers U-turn Back
Facing Dancers Start Pass and Roll
Centers Trade
Girls Start Swing Thru
Circulate
Heads Trade
Right and Left Grand''',''),

  TestSequence('Cast Back',
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
Allemande Left''',''),

  TestSequence('Individually Roll',
  '''Heads As Couples Touch 1/4
As Couples Follow Your Neighbor and Individually Roll
Girls Pass Thru
Touch a Quarter
Boys Run
As Couples Hinge and Individually Roll
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
Allemande Left''',''),

  TestSequence('Horseshoe Turn',
  '''Heads Touch a Quarter
Sides Trade
Horseshoe Turn
Center 4 Face In
Outer 4 U-turn Back
Horseshoe Turn
Centers Run and Roll
Double Pass Thru
Ends U-turn Back
Allemande Left''',''),

  TestSequence('Rotate (C-1)',
  '''Sides Pass the Ocean
Heads Rotate 1/4
Cycle and Wheel
Mini Busy
Heads Reverse Rotate 1/4
Very Centers Run
Line Of 8 Turn and Deal
Star Thru
Outer 4 Single Rotate 1/4
Centers Chase Right
Left Swing Thru
Recycle
Pass Thru
Outer 4 Reverse Single Rotate 1/2
Centers Touch 1/4
Boys Run
Centers Pass Thru
Cast Off 3/4
Star Thru
Track 2
Acey Deucey
Swing Thru
Boys Run
Circulate
Wheel and Deal
Allemande Left''',''),

  TestSequence('Rotate (C-2)',
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
Allemande Left''',''),

  TestSequence('Rotary',
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
Right and Left Grand''',''),

  TestSequence('Outer 6 Circulate',
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
Allemande Left''',''),

  TestSequence('Ignore',
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
Allemande Left''',''),

  TestSequence('Split Circulate',
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
Allemande Left''',''),

  TestSequence('Grand Swing Thru',
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
Allemande Left''',''),

  TestSequence('Ripple',
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
Promenade Home''',''),

  TestSequence('While Others',
  '''Heads Touch a Quarter
Facing Dancers Pass Thru While Others Turn Back
Boys Run
Centers Boys Cross While Others Turn Back
Girls Touch a Quarter While Others Zoom
Girls Hinge
Boys Half Zoom
Adjust to Lines
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
Promenade Home''',''),

  TestSequence('Cross 3',
  '''Heads Lead Right
Touch a Quarter and Cross
Wheel and Deal
Centers Pass Thru
Left Touch a Quarter and Cross
Bend the Line
Touch a Quarter and Cross
Trade By
Veer Left
Turn and Deal
Veer Left
Bend the Line
Touch a Quarter
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Flutterwheel and Sweep 1/4',
  '''Heads Lead Right
Flutterwheel and and Sweep a Quarter
Pass Thru
Wheel and Deal
Centers Flutterwheel and Sweep a Quarter
Split Square Thru 3
Bend the Line
Touch a Quarter
Boys Run
Girls Zoom
Centers Pass Thru
Right and Left Thru
Veer Right
Promenade Home''',''),

  TestSequence('Saparate Go Around',
  '''Heads Move In and Turn Thru
Centers Separate Around One to a Line
Pass Thru
Tag the Line Zag Zig
Left Swing Thru
Split Circulate
Girls Run
Ferris Wheel
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Those Who Can Pass Thru',
  '''Heads Touch 1/4
Those Who Can Pass Thru
Centers Step to a Wave
Chain Reaction
Left Turn and Deal
Star Thru
Wheel and Deal
Zoom
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Cast a Shadow 3/4 Slip',
  '''Heads Lead Right
Veer Left
Cast a Shadow Centers Go 3/4
Boys Run
Fan the Top
Slip
Turn and Deal
Touch a Quarter
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Spin the Windmill',
  '''Heads Pass the Sea
Spin the Windmill Out
Centers Left Quarter Thru
Spin the Windmill Forward
Circulate
Girls Trade
Cycle and Wheel
Pass Thru
Spin the Windmill Left
Recycle
Pass Thru
Left Spin the Windmill Right
Split Circulate
Boys Run
Girls Circulate
Bend the Line
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Actives Actions',
  '''Heads Separate and Star Thru
Double Pass Thru
Horseshoe Turn
Veer Left
Slither Slide Slip Swing
Boys Run
Circulate
Bend the Line
Pass Thru
Ends Bend and Slide Thru
Right Roll to a Wave
Split Circulate
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Linear Cycle',
  '''Heads Touch 1/4 and Spread
Circulate
Linear Cycle
Spin the Top
Fan the Top
Boys Run
Linear Cycle
Veer Left
Fan the Top
Head Boys Ripple 2
Very Centers Turn Back
Left Linear Cycle
Veer Left
Bend the Line
Brace Thru
Touch a Quarter
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Couples',
  '''Heads Touch 1/4 and Spread
Couples Partner Trade
Centers Trade
Centers Run
Circulate
Centers Pass the Ocean
Diamond Circulate
Flip the Diamond
Fan the Top
Very Centers Run
Couples Fan the Top
Boys Hinge
Couples Partner Trade
Chain Reaction
Couples Partner Tag While Others Trade and Roll
Magic Column Circulate
Boys Run
Trade By
Brace Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Waves',
  '''Heads Touch 1/4 and Spread
Wave Dancers Trade
Centers Pass the Ocean
Diamond Circulate
Flip the Diamond
Fan the Top
Very Centers Run
Wave Dancers Trade and Roll
Center 4 Wheel and Deal
Heads Touch
Centers 4 Pass the Ocean
Boys Run
As Couples Extend
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Recycle Twice and Roll',
  '''Heads Lead Right
Recycle Twice and Roll
Left Swing Thru
Split Circulate
Girls Run
Bend the Line
Right and Left Thru
Touch a Quarter
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Anything the Windmill',
  '''Sides Pass the Ocean
Very Centers Hinge
Side Boys Face In
Extend the Windmill Right
Cut the Diamond
Zig Zag
Boys Run
Trade By
Veer Left
Bend the Line
Quarter In
Right and Left Grand''',''),

  TestSequence('Anything the Windmill 2',
'''Heads Pass the Ocean
Extend
Extend the Windmill Left
Recycle
Ends Half Sashay
Star Thru
Right and Left Thru
Pass Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Magic Transfer and',
  '''Heads Touch 1/4
Make Magic
Magic Transfer and Left 1/4 Thru
Centers Left Swing Thru
Centers Recycle
Centers Square Thru 3
Box the Gnat
Right and Left Thru
Allemande Left
Right and Left Grand''',''),

  TestSequence('Tag Back to a Wave',
  '''Heads Star Thru and Spread
Pass Thru
Tag Back to a Wave
Extend
Right and Left Grand''',''),

  TestSequence('All 8',
  '''Hinge
Adjust to Thar
All 8 Slip
All Eight Fan the Top
All Eight Boys Run
All 8 Cross Roll
All 8 Swing Thru 1.5
All 8 Switch the Wave
Trade
Promenade Home''',''),

  TestSequence('Chain Reaction',
'''Sides Pass the Ocean
Girls Run
Chain Reaction Turn the Star 3/4
Centers Pass the Ocean
Cut the Diamond
Acey Deucey
Recycle
Star Thru
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Mix',
'''Sides Lead Right
Veer Left
Reverse Order Mix
Bend the Line
Pass Thru
Quarter In
Right and Left Grand''',''),

  TestSequence('6x2 Acey Deucey',
'''Heads Lead Right
Veer Left
Girls Hinge
Split Counter Rotate
Very Centers Hinge
Six-two Acey Deucey
Outer 2 Counter Rotate
Adjust to 1/4 Tag
Chain Reaction
Left Tag the Line
Centers Turn Back
Allemande Left''',''),

  TestSequence('Swing and Mix',
'''Sides Pass the Ocean
Extend
Reverse Order Swing and Mix
Girls Run
Wheel and Deal
Star Thru
Pass Thru
Wheel and Deal
Zoom
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Mini-Busy',
'''Sides Lead Right
Veer Left
Mini Busy But Cut the Diamond
Chain Reaction
Tag the Line
Zoom
Ends Turn Back
Right and Left Grand''',''),

  TestSequence('Motivate',
'''Sides Pass the Ocean
Extend
Motivate
Motivate Turn the Star a Full Turn
Circulate
Swing Thru
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Remake',
'''Sides Pass the Ocean
Extend
Centers Reverse Order Left Remake
Reverse Order Remake
Split Counter Rotate
Reverse Order Grand Remake
Boys Run
Track 2
Recycle
Right and Left Thru
Allemande Left''',''),

  TestSequence('Slide',
'''Sides Pass the Ocean
Slide
Slide
Extend
Hinge
Girls Run
Centers Pass Thru
Slide
Centers Pass Thru
Cast Off Three Quarters
Right and Left Thru
Star Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Slither',
'''Sides Pass the Sea
Slither
Slither
Extend
Slither
Centers Hinge
Slither
Centers Cast Off Three Quarters
In-Roll Circulate
Slither
Boys Trade
Cycle and Wheel
Veer Right
Centers Trade
Wheel and Deal
Star Thru
Boys Trade
Wheel and Deal
Allemande Left''',''),

  TestSequence('Split Counter Rotate',
'''Sides Pass Out
Split Counter Rotate
Centers Pass Thru While Ends Face In
Split Counter Rotate
Ends Trade While Centers Pass Out
Allemande Left''',''),

  TestSequence('Swing',
'''Sides Pass the Ocean
Swing
Extend
Girls Turn Back
Swing
Centers Run
Pass Thru
Wheel and Deal
Double Pass Thru
Face Left
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Center Wave of 4',
'''Sides Pass In and Spread
Swing Thru
Center Wave Of Four Recycle
Center 4 Pass the Ocean
Center Wave Of Four Swing Thru While Others Cast Off 3/4
Chain Reaction
Wheel and Deal
Star Thru
Boys Circulate
Cast Off Three Quarters
Split Counter Rotate
Box the Gnat
Right and Left Grand''',''),

  TestSequence('Centers of PTP Diamonds',
'''Heads Lead Right
Veer Left
Girls Hinge
Split Counter Rotate
Centers Trade
Cut the Diamond
Wheel and Deal
Star Thru
Trade By
Veer Left
Trade
Promenade Home''',''),

  TestSequence('Do One Part',
'''Sides Pass the Ocean
Extend
Boys Run
Do the 1st Part Mini Busy
Do the 2nd Part Mini Busy
Cut the Hourglass
Circulate
Ferris Wheel
Centers Turn Back
Allemande Left''',''),

  TestSequence('Spin Chain the Gears',
'''Sides Pass the Ocean
Extend
Spin Chain the Gears Turn the Star a Full Turn
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Same Sexes',
'''Sides Pass the Ocean
Extend
Hinge
Same Sexes Trade
Hinge
Same Sexes Trade
Hinge
Centers Trade
Same Sexes Trade
Split Circulate
Girls Run
Circulate
Wheel and Deal
Allemande Left''',''),

  TestSequence('And 1/4 More',
'''Heads Lead Right
Veer Left
Chain Down the Line and a Quarter More
Circulate
Reverse Wheel Around and a Quarter More
Ends Bend and Star Thru
Veer Left
Wheel Around
Promenade Home''',''),

  TestSequence('Everyone',
'''Sides Pass the Ocean
Extend
Hinge
Girls Run and Everyone Pass Thru
Tag the Line Face In
Star Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Alter the Wave',
'''Sides Pass the Ocean
Extend
Alter the Wave Turn the Star 1/4
Recycle
Star Thru
Trade By
Right and Left Thru
Allemande Left''',''),

  TestSequence('Block',
'''Heads Lead Right
Boys Spread
In Your Block Zoom
In Your Block Leads Trade
In Your Block Partner Tag
In Your Block Left Chase
In Your Block Trade and Roll
Heads Half Step
Star Thru
Centers Pass Thru
Right and Left Thru
Box the Gnat
Right and Left Grand''',''),

  TestSequence('Dixie Diamond',
'''Sides Star Thru and Spread
Reverse Dixie Diamond
Diamond Chain Thru
Wheel and Deal
Right and Left Thru
Star Thru
Trade
Promenade Home''',''),

  TestSequence('Interrupt',
'''Sides Lead Right
Pass and Roll Interrupt Between Each Part With Half Sashay
Remake Interrupt After Each Part With Split Circulate
Spin Chain Thru Interrupt After the 2nd Part With Diamond Circulate
Circulate
Boys Run
Turn and Deal
Allemande Left''',''),

  TestSequence('Linear Action',
'''Sides Pass the Ocean
Linear Action But Trade the Wave
Diamond Chain Thru
Crossfire
Boys Run
Veer Right
Promenade Home''',''),

  TestSequence('Linear Action 2',
'''Heads Step to a Wave
Linear Action
Boys Run
Wheel and Deal
Zoom
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Pass the Axle',
'''Sides Lead Right
Pass the Axle But Cast Off 3/4
Chase Right
Split Circulate
Boys Run
Circulate
Bend the Line
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Ramble',
'''Heads Star Thru and Spread
Pass Thru
Wheel and Deal
Girls Touch 1/4 While Boys Trade
Ramble
Girls Hinge
Magic Column Transfer the Column
Left Quarter Thru
Girls Run
Star Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Replace',
'''Sides Pass the Ocean
Extend
Remake Replace the 2nd Part With Split Circulate
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Snap the Lock',
'''Sides Touch 1/4 and Spread
Snap the Lock
Bend the Line
Star Thru
Allemande Left''',''),

  TestSequence('Acey Deucey',
'''Heads Star Thru
Double Pass Thru
Centers Chase Right
Centers Box Counter Rotate
Acey Deucey
Centers Run
Centers Touch 1/4
Left Quarter Thru
Circulate
Girls Run
Wheel and Deal
Centers Pass Thru
Veer Right
Promenade Home''',''),

  TestSequence('Coordinate',
'''Heads Pair Off
Boys Run
Coordinate Replace the 3rd Part With Very Centers Trade
Boys Trade
Bend the Line
Touch a Quarter
Coordinate Skip the Last Part
Boys Squeeze
Flip the Hourglass
Boys Run
Circulate
Wheel and Deal
Allemande Left''',''),

  TestSequence('Load the Boat',
'''Heads Lead Right
Veer Left
Bend the Line
Load the Boat Skip the 2nd Part
Centers Chase Right While Ends Separate
Finish Load the Boat
Centers Run and Roll
Right Roll to a Wave
Out-Roll Circulate
Boys Run
Wheel Around
Promenade Home''',''),

  TestSequence('Plenty',
'''Sides Pass the Ocean
Extend
Extend
Plenty Turn the Star 1/4
Centers Recycle and Pass Thru
Right and Left Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Relay the Top',
'''Sides Pass the Ocean
Cross Extend
Relay the Top Turn the Star a Full Turn
Girls Run
Bend the Line
Star Thru
Veer Left
Wheel Around
Promenade Home''',''),

  TestSequence('Swing the Fractions',
'''Sides Pass the Ocean
Extend
Swing the Fractions Interrupt Between Each Part With Split Circulate
Left Swing the Fractions Interrupt After the 2nd Part With Cut the Diamond
Girls Run
Quarter In
Right and Left Grand''',''),

  TestSequence('Tally Ho',
'''Sides Pass the Ocean
Extend
Tally Ho But Recycle
Boys Pass Thru
Girls Run and Roll
Right Roll to a Wave
Quarter Thru
Boys Run
Circulate
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('With the Flow',
'''Heads Lead Right
Veer Left
Cast Off Three Quarters With the Flow
Mix
Recycle With the Flow
Circulate
Peel Off
Centers Run
Swing Thru
Boys Run
Bend the Line
Right and Left Thru
Star Thru
Allemande Left''',''),

  TestSequence('Alter and Circulate',
'''Sides Pass the Ocean
Extend
Alter and Circulate Turn the Star 1/4
Recycle
Cross Trail Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Couple Up',
'''Sides Pass the Ocean
Extend
Trade Couple Up
Pass the Sea
Trade Couple Up
Touch a Quarter
Trade Like a Couple Up
Veer Left
As Couples Couple Up
Pass Thru
Turn and Deal
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Zip Code',
'''Heads Star Thru
Zip Code 3
Star Thru
Zip Code 6
Centers Shakedown
Ends Run
Pass the Ocean
Girls Circulate
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Scoot and Weave',
'''Sides Pass the Ocean
Extend
Reverse Order Scoot and Weave
Quarter Thru
Boys Run
Pass Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Square the Bases',
'''Heads Star Thru and Spread
Square the Bases Interrupt Between Each Part With Centers Half Sashay
Star Thru
Bend the Line
Slide Thru
Allemande Left''',''),

  TestSequence('Square the Bases But',
'''Heads Star Thru and Spread
Square the Bases But Split Square Thru 3
Cast Off 3/4
Star Thru
Pass Thru
Trade By
Allemande Left''' , ''),

  TestSequence('Quarter Mix',
'''Sides Pass the Ocean
Extend
1/4 Mix Interrupt Between Each Part With Split Circulate
Left 1/4 Mix Interrupt Between Each Part With Acey Deucey
Fan the Top
Reverse Order Grand Left 3/4 Mix
Girls Run
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Vertical Tag Back',
'''Sides Pass the Ocean
Extend
Reverse Order Vertical Tag Back
Centers Walk and Dodge
Vertical Tag Back
Quarter Thru
Circulate
Right and Left Grand''',''),

  TestSequence('Tag Back',
'''Sides Pass the Ocean
Extend
Reverse Order Tag Back
Centers Walk and Dodge
Tag Back
Right and Left Grand''',''),

  TestSequence('Flip Back',
'''Sides Pass the Ocean
Extend
Reverse Order Flip Back
Flip Back Interrupt Between Each Part With Split Circulate
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Wheel the Ocean',
'''Heads Star Thru and Spread
Pass Thru
Wheel the Ocean Interrupt After the 1st Part With Half Sashay
Centers Run
3/4 Wheel the Sea Interrupt After the 1st Part With Half Sashay
Left Swing Thru
Left Quarter Thru
Girls Run
Wheel and Deal
Zoom
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Left Swing Thru',
'''Heads Pass the Ocean
Left Swing Thru
Extend
Spin Chain Thru
Recycle
Pass Thru
Centers Turn Thru While Outsides Trade
Allemande Left''',''),

  TestSequence('Swing Thru 2',
'''Sides Pass the Ocean
Left Swing Thru
Heads Separate
Swing Thru
Boys Run
Wheel and Deal
Pass the Ocean
Boys Circulate
Boys Run
Circulate
Wheel and Deal
Allemande Left''',''),

  TestSequence('Cast and Relay',
'''Sides Pass the Ocean
Extend
1/4 Cast and Relay Turn the Star 1/2
1/2 Cast and Relay But Hinge
Quarter Thru
Stretch Recycle
Centers Turn Back
Allemande Left''',''),

  TestSequence('Change the Centers',
'''Sides Pass the Ocean
Extend
Change the Centers Interrupt After Each Part With Split Circulate
Change the Wave Interrupt After the 3rd Part With Acey Deucey
Centers Circulate
Boys Run
Pass Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Split Dixie Style',
'''Heads Step to a Wave
Split Dixie Style
Leaders Run
Girls Hinge
Split Dixie Style
Circulate Twice
Boys Run
Center 4 Trade
Star Thru
Wheel and Deal
Zoom
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Split Dixie Diamond',
'''Heads Step to a Wave
Split Dixie Diamond
Flip the Diamond
Mix
Ends Half Zoom
Centers Zing and Pass Thru
Split Dixie Diamond
Cut the Diamond
Bend the Line
Pass the Ocean
Out-Roll Circulate
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Sidetrack',
'''Sides Pass the Ocean
Extend
Sidetrack
Split Sidetrack
Single Sidetrack
Zig Zag
Recycle
Brace Thru
Pass Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Spin the Pulley',
'''Heads Move In and Right and Left Thru
Spin the Pulley But Trail Off
Left Turn and Deal
Veer Right
Promenade Home''',''),

  TestSequence('Scoot and Plenty',
'''Sides Pass the Ocean
Scoot and Plenty Turn the Star 3/4
Extend
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Own the Dancers',
'''Heads Pass Out
Own the Boys Pass In By Pass Out
Own the Girls Chase Right By Couples Circulate
Ends Bend
Own the Ends Load the Boat By Box Recycle
Chain Reaction But Hinge
Trade the Wave
Boys Run
Promenade Home''',''),

  TestSequence('Pass the Sea',
'''Heads Pair Off
Pass Thru
Finish Pass the Sea
Hinge
Left Remake
Partner Tag
Left Turn and Deal
Centers Pass Thru
Right and Left Thru
Allemande Left''',''),

  TestSequence('Stretch',
'''Sides Pair Off
Circle to a Line
Pass Thru
Stretch Left Shakedown  Centers With the Flow
Ends Separate and Left Touch 1/4 While Others Box Counter Rotate
Checkover
Stretch Left Turn and Deal and Roll
Circulate
Ferris Wheel
Centers Pass Thru While Ends Half Sashay
Allemande Left''',''),

  TestSequence('Reverse Explode',
'''Sides Pass the Ocean
Extend
Quarter Thru
Boys Reverse Explode While Girls Explode
1/2 Circulate
Center Star Run
Boys Reverse Explode
Left Plenty
Extend
Out-Roll Circulate
Girls Run
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Spread 2',
'''Heads Star Thru and Spread
Ends Touch 1/4 and Spread
Butterfly Center 4 Touch 1/4
Butterfly Circulate
Girls Squeeze
Circulate
Boys Run
Centers Pass Thru
Star Thru
Pass Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Spread 3',
'''Sides Spin the Top and Spread
Centers Quarter In
Centers Pass and Roll Your Neighbor and Spread
Centers Recycle
Centers Cross Trail Thru
Allemande Left''',''),

  TestSequence('Butterfly To Lines',
'''Sides Face In
O Double Pass Thru
O Track 2 to Waves
Recycle
Girls Squeeze
Butterfly Zing to Lines
Brace Thru
Star Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Squared Set Convention',
'''Heads Pass Thru
Heads Left Chase
Sides Pass Thru
Sides Left Chase
All 8  Left Quarter Thru
Boys Run
Cast Off Three Quarters
Adjust to Squared Set
Heads Pair Off
Star Thru
Cast Off Three Quarters
Pass the Ocean
Boys Circulate
Boys Run
Cast Off Three Quarters
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Square Chain the Top',
'''Heads Pass the Sea
Extend
Finish Square Chain the Top
Centers Right Roll to a Wave
Outer 4 Turn Back
Square Chain the Top
Bend the Line
Left Square Chain the Top Skip the Last Part
Grand Swing Thru
Recycle
Star Thru
Trade By
Half Sashay
Right and Left Grand''',''),

  TestSequence('Step Thru',
'''Heads Pass Out and Spread
Step Thru
Left Roll to a Wave
Step Thru
Cross Clover and Face Out
Right and Left Thru
Allemande Left''',''),

  TestSequence('Big Tag the Line',
'''Sides Pass the Ocean
Extend
Fan the Top
Line of 8 Tag the Line
Face Right
Line Of 8 Half Tag
Hinge
Line Of 8 Left Tag the Line
Face Left
Line Of 8 Left Half Tag
1/2 Circulate
Outer 2 Counter Rotate While Others Hinge
Line Of 6 Tag the Line
Face Right
Line Of 6 Half Tag
Center 6 Hinge
Line Of 6 Left Tag the Line
Face Left
Line Of 6 Left Half Tag
Trade the Windmill In
Star Thru
Track 2
Circulate
Boys Run
Cast Off Three Quarters
Quarter Out
Allemande Left''',''),

  TestSequence('Big Turn and Deal',
'''Sides Pass the Ocean
Extend
Fan the Top
Boys Run
Line Of 8 Turn and Deal
Partner Hinge
Spin the Top
Girls Run
Line Of 8 Left Turn and Deal
Star Thru
Right and Left Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Wheel And',
'''Heads Pass Thru
Wheel and Cross Trail Thru
Pass Thru
Wheel and Star Thru
Double Pass Thru
Reverse Wheel and Chase Right
Centers Run
Centers Touch a Quarter
Left Quarter Thru
Circulate
Quarter In
Right and Left Grand''',''),

  TestSequence('Wheel And 2',
'''Heads Touch a Quarter While Sides Trade
Centers Turn Back
Wheel and Walk and Dodge
Centers Run and Roll
Zing
Star Thru
Ends Trade
Allemande Left''',''),

  TestSequence('Wheel And 3', '''Heads Square Thru 2
Slide Thru
Pass Thru
Vertical 3/4 Tag
Clover and Lockit
Extend
Boys Run
Vertical 3/4 Tag
Wheel and 2/3 Recycle Girls Roll
Boys Zing and Pass the Ocean
Flip the Diamond
Recycle
Right and Left Thru
Allemande Left''', ''),

  TestSequence('Centers Trade the Wave',
'''Sides Pass the Ocean
Centers Trade the Wave
Extend
Boys Trade
Girls Run
Ferris Wheel
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Double Cross',
'''Heads Pass the Sea
Side Boys Run
Double Cross
Boys Trade
Double Cross
Double Cross
Clover and Wheel and Deal
Centers Star Thru
Centers Pass Thru
Touch a Quarter
Quarter Thru
Hinge
Boys Circulate
Boys Run
Circulate
Wheel and Deal
Allemande Left''',''),

  TestSequence('Select Diamond',
'''Sides Pass the Ocean
Extend
Acey Deucey Once and a Half
Center Diamond Circulate
Middle Diamond Circulate
Outside Diamond Circulate
Boys Flip the Diamond
Outside Diamond Circulate
Center Line Of 4 Wheel and Deal
Outer 4 Bend the Line
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Dodge',
'''Heads Pass the Ocean
Extend
Dodge Face In
Centers Chase Right
Dodge Trade
Clover and Left Chase
Dodge and Separate
Centers Shakedown
Centers Touch a Quarter
Dodge Load the Boat
Centers Run and Roll
Boys Touch a Quarter
Dodge Separate and Pass In
Touch a Quarter
Acey Deucey
Trade
Right and Left Grand''',''),

  TestSequence('Lines Anything Thru',
'''Sides Pass the Ocean
Extend
Lines Box Recycle Thru
Girls Hinge and Roll
Out-Roll Circulate
Lines Chase Right Thru
Cast Off Three Quarters
Touch a Quarter
Circulate
Boys Run
Cloverleaf
Centers Pass Thru
Star Thru
Right and Left Thru
Pass Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Reshape',
'''Heads Lead Right
Veer Left
Boys 1/2 Circulate
Adjust to a Galaxy
Wave-based Triangle Reshape
Points Turn Back
Wave-based Triangle Reshape
Tandem-based Triangle Reshape
Galaxy Circulate
Wave-based Triangle Reshape
Cut the Galaxy
Girls Run
Cast Off Three Quarters
Half Sashay
Sides Pair Off
Pass Thru
Trade By
Pass Thru
Allemande Left''',''),

  TestSequence('Side Girls Cross Run',
'''Four Ladies Chain 3/4
Heads Pass the Ocean
Side Girls Cross Run
Chain Reaction
Recycle
Star Thru
Wheel and Deal
Zoom
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Auto Adjust 1',
'''Heads Pair Off
Slide Thru
Touch a Quarter
Circulate 1.5
Girls Spread
Boys Half Circulate
Crossfire
Boys Run
Right and Left Thru
Allemande Left''',''),

  TestSequence('Split Recycle',
'''Heads Touch a Quarter
Split Recycle
Head Girls Run
Circulate
Split Recycle
Hinge
Centers Boys Run
Split Recycle
Trade the Wave
Head Girls Run
Reverse Split Recycle
Boys Run
Wheel and Deal
Pass the Ocean
Circulate
Boys Run
Bend the Line
Left Square Thru 4
Allemande Left''',''),

  TestSequence('Scoot Chain Thru',
'''Sides Pass the Ocean
Extend
Scoot Chain Thru Skip the 3rd Part
Recycle
Centers Right Roll to a Wave
Scoot Chain Thru Replace the 3rd Part With Mix
Plenty
Extend
Boys Run
Star Thru
Allemande Left''',''),

  TestSequence('Leaders Right Loop',
'''Heads Pass the Ocean
Extend
Leaders Right Loop 1
Triple Box Pass Thru
Triple Box Shakedown
Trade By
Slide Thru
Centers Trade
Wheel and Deal
Centers Wheel Around
Allemande Left''',''),

  TestSequence('Trail to a Diamond',
'''Heads Wheel Thru
Right and Left Thru Boys Roll
Trail to a Diamond
Hinge
Trail to a Diamond
Cut the Diamond
Cast Off 3/4
Left Square Thru 4
Allemande Left''',''),

  TestSequence('Concentric Tag the Line',
'''Head Lead Right
Veer Left
Fan the Top
As Couples Centers Run
Concentric Tag the Line
Right Roll to a Wave
Boys Run
Double Pass Thru
Leaders Trade
Pass Thru
Allemande Left''',''),

  TestSequence('Concentric Veer',
'''Sides Pass the Ocean
Heads Concentric Veer Left
Cycle and Wheel
Brace Thru
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Regroup',
'''Heads Star Thru and Spread
Centers Touch 1/4
Regroup
Ends Pass Thru
Regroup
Centers Touch 1/4
Regroup
Pass the Ocean
Boys Circulate
Boys Run
Bend the Line
Touch 1/4
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Press Ahead',
'''Sides Pass the Ocean
Extend
Leaders Press Ahead
In Your Block Trade
In Your Block Zing
Girls 1/2 Press Ahead
Star Thru
Trade By
Allemande Left''',''),

  TestSequence('Single Bounce',
'''Heads Pass the Ocean
Extend
Single Bounce the Boys
Left Roll to a Wave
Single Bounce the Centers
Partner Tag
Centers Trade
Single Bounce the Boys
Magic Column Circulate
Trade and Roll
Star Thru
Track 2
Cast Off 3/4
Boys Run
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('&',
'''Heads Lead Right
Right & Left Thru
Touch 1/4
Walk & Dodge
Wheel & Deal
Centers Swing Thru
Scoot & Plenty Replace the Stars With Out Roll Circulate
Extend
Boys Run
Reverse Wheel Around
Pass Thru
Wheel and Deal
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Resolution',
'''Heads Pass In
Zoom
Dixie Grand
Allemande Left''',''),

  TestSequence('Quarter Tops',
'''All 4 Couples Pass the Ocean
Half the Top
3/4 the Top
Half the Top
1/4 the Top
All 8 Recycle
Allemande Left''',''),

  TestSequence('Half Bend the Line',
'''Heads Lead Right
Veer Left
1/2 Bend the Line
Chain Reaction
Centers Pass Thru and Chase Right
Left Swing Thru
Tag the Line
Leads Turn Back
Right and Left Grand''',''),

  TestSequence('Start Diamond Chain Thru',
'''Heads Star Thru and Spread
Pass the Ocean
Centers Cast Off 3/4
Boys Start Diamond Chain Thru
Centers Start Brace Thru
Star Thru
Veer Left
Cast Off 3/4
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Lateral Substitute 1a',
'''Heads Lead Right
Veer Left
Boys 1/2 Circulate
Galaxy Circulate
Tandem-Based Triangle Lateral Substitute
Tandem Based Triangle Lateral Substitute
Boys Hinge
Center Diamond Cut the Diamond
Center Wave Left Swing Thru Others Cast Off 3/4
Extend
Split Circulate
Girls Run
Circulate
Wheel and Deal
Allemande Left''', ''),

  TestSequence('Lateral Substitute 1b',
'''Sides Lead Right
Veer Left
Boys 1/2 Circulate
Galaxy Circulate
Tandem-Based Triangle Lateral Substitute
Tandem Based Triangle Lateral Substitute
Boys Hinge
Center Diamond Cut the Diamond
Center Wave Left Swing Thru Others Cast Off 3/4
Extend
Split Circulate
Girls Run
Circulate
Wheel and Deal
Allemande Left''', ''),

  TestSequence('Lateral Substitute 2a',
'''Heads Move In
Sides Hinge
Inside Triangle Lateral Substitute
Outside Triangle Lateral Substitute
Center Wave Recycle
Pass the Ocean
Swing Thru
Circulate
Boys Run
Bend the Line
Right and Left Thru
Star Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Lateral Substitute 2b',
'''Sides Move In
Heads Hinge
Inside Triangle Lateral Substitute
Outside Triangle Lateral Substitute
Center Wave Recycle
Pass the Ocean
Swing Thru
Circulate
Boys Run
Bend the Line
Right and Left Thru
Star Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Lateral Substitute 3',
'''Heads Move In
Boys Run
Centers Lateral Substitute
Counter Rotate
Outer 4 Lateral Substitute
Girls Run
Outer 4 Cloverleaf
Box the Gnat
Allemande Left''', ''),

  TestSequence('Facing In / Out',
'''Heads Lead Right
Veer Left
Those Facing Out Trade
Those Facing In Pass Thru
Centers Trade
Boys Facing Out Face In
Those Facing In Quarter Out
Those Facing Out Trade
Centers Touch 1/4
Centers Facing Out Turn Back
Pass the Ocean
Split Circulate
Boys Run
Ferris Wheel
Centers Swap
Allemande Left''', ''),

  TestSequence('Peel Off',
'''Heads Lead Right
Veer Left
Girls Hinge
Boys Peel Off
Girls Recycle While Boys Bend the Line
Double Pass Thru
Belles Peel Off
Couples Bend the Line Others Face In
Adjust to Lines
Star Thru
Trade By
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Twice',
'''Heads Pass Out
Touch 1/4
Centers Trade
Centers Run
Cross Over Circulate Boys Go Twice
Centers Trade
Trade Circulate Boys Go Twice
Star Thru
Centers Pass Thru
Pass the Ocean
Fan the Top
Acey Deucey Boys Go Twice
Recycle
Pass Thru
Trade By
Star Thru
Slide Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Dosado to a Wave',
'''Heads Lead Right
Dosado to a Wave
Recycle
Left Dosado to a Wave
Centers Walk and Dodge
Circulate
Boys Dosado to a Wave
Outside Triangle Circulate
Very Centers Face In and Dosado to a Wave
Center 4 Flip the Diamond
Center 4 Step and Fold
Couples Circulate
Ferris Wheel
Centers Pass Thru
Star Thru
Acey Deucey Boys Go Twice
Ferris Wheel
Centers Reverse Swap
Allemande Left''', ''),

  TestSequence('Left Linear Cycle',
'''Heads Lead Right
Veer Left
Bend the Line
Left Linear Cycle
Touch 1/4
Circulate
Boys Run
Centers Pass Thru
Allemande Left''', ''),

  TestSequence('Anything and Circle',
'''Sides Pass the Ocean
Extend
Extend
Mix and Circle 1/2
Girls Run and Circle 1/2
Boys Recycle
Right Roll to a Wave
Cast Off 3/4
Right and Left Grand''',''),

  TestSequence('Patch',
'''Sides Pass the Ocean
Extend
Patch the Boys
Patch the Centers
Pass Thru
Patch the Leaders
Split Circulate
Boys Run
Pass Thru
Wheel and Deal
Zoom
Centers Square Thru 3
Half Sashay
Allemande Left''', ''),

  TestSequence('Touch By',
'''Heads Pass In
Touch By 3/4 By 1/4
Ferris Wheel
Touch By 1/4 By Recycle
Diamond Circulate
Flip the Diamond
Hinge
Circulate
Boys Run
Bend the Line
Touch 1/4
Circulate
Boys Run
Allemande Left''',''),

  TestSequence('Chain Down the Line',
'''Half Sashay
Heads Lead Right
Veer Left
Tag the Line Face In
Girls Pass the Ocean and Hinge
Chain Down the Line
Pass the Ocean
Hinge
Centers Trade
Centers Run
Couples Circulate
Ferris Wheel
Girls Touch 1/4
Chain Down the Line
Right and Left Thru
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Grand Square 6 Steps',
'''Sides Face Grand Square 6 Steps
Star Thru
Right and Left Thru
Allemande Left''', ''),

  TestSequence('Fold from t-bones','''Heads Lead Right
Pass Thru
Ends Face Out
Ends Fold
Centers Wheel Thru
Pass Thru
Trade By
Allemande Left''',''),

  TestSequence('Centers Single Wheel',
'''Sides Pass Out
Centers Single Wheel
Very Centers Pass Thru
Centers Pass and Roll
Centers Walk and Dodge
Pass and Roll
Girls Trade
Boys Run
Bend the Line
Star Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Couple 1',
'''Couple 1 Half Sashay
Heads Slide Thru
Facing Dancers Box the Gnat
Facing Dancers Slide Thru Others Face Out
Partner Trade
Pass the Ocean
Centers Circulate
Swing Thru
Swing Thru
Boys Run
Cast Off 3/4
Star Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Swap Around',
'''Heads Move In
Swap Around
Couples Trade and Roll
Magic Column Circulate
Boys Run
Leaders Trade and Roll
Reverse Swap
Couples Trade Others Face In
Pass the Ocean
Acey Deucey Girls Go Twice
Boys Run
Bend the Line
Allemande Left''', ''),

  TestSequence('Face the Caller',
'''Heads Lead Right
Touch 1/4
Swing Thru
Recycle
Veer Left Boys Face the Caller
Wheel and Deal
Boys Zoom
Girls Face the Caller
Facing Dancers Couples Pass Thru
Trade By
Pass Thru
Trade By
Star Thru
Bend the Line
Slide Thru
Square Thru 3
Allemande Left''',''),

  TestSequence('Dive Thru',
'''Heads Lead Right
Couples 1 and 2 Dive Thru
Facing Couples Pass Thru
Couple 3 Trade
Double Pass Thru
Boys Run
Circulate
Split Circulate
Boys Run
Zoom
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Cross Concentric',
'''Heads Star Thru
Cross Concentric Slide Thru
Cross Concentric Pass the Ocean
Cross Concentric Explode the Wave
Cast Off 3/4
Star Thru
Centers Pass Thru
Allemande Left''', ''),

  TestSequence('Couples 1 and 2 Right and Left Thru',
'''Couples 1 and 2 Right and Left Thru
Couples 3 and 4 Right and Left Thru
Sides Lead Right
Veer Left
Bend the Line
Star Thru
Square Thru 3
Allemande Left''',''),

  TestSequence('Asymmetric Bend the Line',
'''Sides Pair Off
Near Box Pass the Ocean Far Box Touch
Boys Run
Fan the Top
Bend the Line
Far Box Star Thru
Slide Thru
Allemande Left''',''),

  TestSequence('Cross Ramble',
'''Heads Pass the Sea
Extend
Extend
Cross Ramble
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Scoot and Weave from T-Bones',
'''Heads Wheel Thru
Boys Do Your Part Wheel Thru
Scoot and Weave
Flip the Diamond
Recycle
Touch 1/4 Girls Roll
Scoot and Weave
Cut the Diamond
Cast Off 3/4
Partner Tag
Allemande Left''', ''),

  TestSequence('Vertical',
'''Heads Lead Right
Pass Thru
Left Vertical Reverse Dixie Style to a Wave
Grand Swing Thru
Boys Run
Crossfire
Vertical Checkmate
Vertical Trail Off
Vertical 1/4 Out
Vertical Triple Star Thru
Vertical Peel and Trail
Wheel and Deal
Zoom
Centers Cross Trail Thru
Allemande Left''', ''),

  TestSequence('In Your Block Zing',
'''Single Rotate 1/4
Sides Squeeze
Outsides Zing
Boys Spread
In Your Block Boys Zing
In Your Block Girls Pass In
Boys Half Press Ahead
Star Thru
Box the Gnat
Allemande Left''',''),

  TestSequence('Double Selection',
'''Heads Lead Right
Star Thru
Near Line Girls and Far Line Boys Pass Thru
Couples 2 and 3 Pass Thru
Cast Off 3/4
Star Thru
Outside Beau and Center Belle Pass Thru
Magic Column Circulate
Face In
Box the Gnat
Star Thru
Right and Left Thru
Allemande Left''',''),

  TestSequence('Spin the Windmill and Circulate',
'''Heads Star Thru and Spread
Pass Thru
Wheel and Deal
Spin the Windmill Left Boys Circulate 3x
Girls Hinge
Mix the Windmill Forward Boys Circulate 1.5
Cut the Galaxy
All 8 Recycle
Heads Pass the Ocean
Extend
Trade
Right and Left Grand''',''),

  TestSequence('Run Around More than One',
'''Heads Lead Right
Veer Left
Head Boys Run Around 2
Cycle and Wheel
Hinge
Side Boys Run Left Around 2
Very Centers Run Around 3
Grand Swing Thru
Explode the Wave
Right Roll to a Wave
Hinge
Centers Circulate
Boys Run
Pass Thru
Wheel and Deal
Centers Reverse Swap
Allemande Left''', ''),

  TestSequence('Prefer In/Out Roll Circulate',
'''Heads Pass the Ocean
Extend
Fan the Top
Prefer the Very Centers Out Roll Circulate
Recycle
Prefer the End Girl In Roll Circulate
Prefer the Head Girls Out Roll Circulate
Pass the Ocean
Swing Thru
Boys Run
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Concentric and Roll',
'''Heads Pass In
Concentric Left Touch 1/4 and Roll
Right and Left Thru
Star Thru
Centers Pass Thru
Allemande Left''', ''),

  TestSequence('Line of 6 Bend the Line',
'''Heads Lead Right
Veer Left
Acey Deucey 1.5
Very Centers Turn Back
Line of 6 Bend the Line
Facing Dancers Touch 1/4
Outer 2 Boys Counter Rotate
6x2 Acey Deucey
Boys Run
Extend
Mix
Acey Deucey 1.5
Line of 6 Girls Run Left
Line of 6 Bend the Line
Facing Dancers Left Touch 1/4
Outer 2 Girls Counter Rotate
Center Line Wheel and Deal
Outer 4 Boys Run
Centers Pass Thru
Touch 1/4
Split Circulate
Swing Thru
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''', ''),

  TestSequence('Multiple Modifications',
'''Sides Pass the Ocean
Extend
Hinge Motivate Do Not Turn the Star But Recycle
Boys Counter Rotate
Cycle and Wheel
Veer Left
Bend the Line
Right and Left Thru
Star Thru
Pass Thru
Allemande Left''', ''),

  TestSequence('Outer 4 squeeze the centers',
'''Sides Pass the Ocean
Heads Separate and Single Circle to a Wave
Recycle
Cross Trail Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('As Couples Heads',
'''Heads Pair Off
Veer Left
Bend the Line
As Couples Heads Cross
As Couples Heads Run
Pass Thru
Wheel and Deal
Centers Square Thru 3
Allemande Left''', ''),

  TestSequence('Cast Off 3/4 from Tidal 3 and 1 Line',
'''Heads Pass Out
Spin the Top
Center 4 Switch the Wave
Cast Off 3/4
Facing Dancers Pass Thru
Center Girls Run
Track 2
Girls Circulate
Boys Run
Ferris Wheel
Centers Square Thru 3
Allemande Left''',''),

  TestSequence('Travel Thru',
'''Heads Lead Right
Travel Thru
Wheel and Deal
Left Travel Thru
Bend the Line
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Eight By Anything',
'''Sides Star Thru and Spread
Eight By Left Wheel Thru
Right Roll to a Wave
Eight By Recycle
Centers Swing Thru
Flip the Diamond
Split Circulate
Boys Run
Cast Off 3/4
Right and Left Thru
Star Thru
Pass Thru
Allemande Left''',''),

  TestSequence('Perk Up',
'''Heads Pass the Ocean
Extend
Perk Up Interrupt After Part 2 With Diamond Circulate
Acey Deucey Ends Go 2x
Wheel and Deal
Star Thru
Girls Circulate
Ferris Wheel
Centers Pass Thru
Allemande Left''',''),

  TestSequence('Linear Cycle to a Wave',
'''Heads Pass the Ocean
Extend
Linear Cycle Boys to a Wave
Extend
1/4 Thru
Spin the Top and Spread
Linear Cycle Boys to a Wave Girls Roll
Cut the Diamond
Recycle
Star Thru
Trade By
Allemande Left''', ''),

  TestSequence('Hop', '''Heads Lead Right
Boys Hop
Recycle
Girls Hop
Trailers Hop
Nobody Hop
Swing Thru
Boys Run
Pass Thru
Wheel and Deal
Centers Pass Thru
Everybody Hop
Recycle
Touch 1/4
Boys Run
Veer Left
Bend the Line
Pass the Ocean
Left Swing Thru 1.5
Right and Left Grand''', ''),

  TestSequence('Choice','''Sides Pass the Ocean
Extend
1/2 Circulate
Choice
Outer 4 Counter Rotate
All 8 Circulate
Split Circulate
Cast Off 3/4 and Roll
Right and Left Grand''',''),

];
