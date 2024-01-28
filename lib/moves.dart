import 'math/hands.dart';
import 'math/movement.dart';
import 'math/path.dart';

final Path Stand = Path([
      Movement.fromData(beats: 1, hands: Hands.BOTH, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0  )],'Stand');
final Path StandAhead = Path([
      Movement.fromData(beats: 1, hands: Hands.BOTH, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.33, cx4: 0.67, cy4: 0, x4: 1, y4: 0  )],'Stand Ahead');
final Path StandAlone = Stand.changehands(Hands.NONE)..name='Stand Alone';
final Path StandLeft = Stand.changehands(Hands.LEFT)..name='Stand Left';
final Path StandRight = Stand.changehands(Hands.RIGHT)..name='Stand Right';
final Path FinalStand = Stand.changehands(Hands.GRIPBOTH)..name='FinalStand';
final Path FinalLeft = Stand.changehands(Hands.GRIPLEFT)..name='Final Left';
final Path FinalRight = Stand.changehands(Hands.GRIPRIGHT)..name='Final Right';
final Path Forward = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: 0.333, cy1: 0, cx2: 0.667, cy2: 0, x2: 1, y2: 0  )],'Forward');
final Path Back = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: -0.333, cy1: 0, cx2: -0.667, cy2: 0, x2: -1, y2: 0, cx3: 0.5, cx4: 0.5, cy4: 0, x4: 1, y4: 0  )],'Back');
final Path RunLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: 2, x2: 0, y2: 2  )],'Run Left');
final Path RunRight = RunLeft.scale(1,-1)..name='Run Right';
final Path UmTurnLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2  )],'U-Turn Left');
final Path UmTurnRight = UmTurnLeft.scale(1,-1)..name='U-Turn Right';
final Path FlipLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0.1, cy1: 0, cx2: 0.1, cy2: 2, x2: 0, y2: 2, cx3: 1, cx4: 1, cy4: 2, x4: 0, y4: 2  )],'Flip Left');
final Path FlipRight = FlipLeft.scale(1,-1)..name='Flip Right';
final Path DodgeLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 2, x2: 0, y2: 2, cx3: 4, cx4: 4, cy4: 1, x4: 8, y4: 1  )],'Dodge Left');
final Path DodgeRight = DodgeLeft.scale(1,-1)..name='Dodge Right';
final Path ExtendLeft = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: 0.5, cy1: 0, cx2: 0.5, cy2: 1, x2: 1, y2: 1, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4  )],'Extend Left');
final Path ExtendRight = ExtendLeft.scale(1,-1)..name='Extend Right';
final Path RetreatLeft = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: -0.5, cy1: 0, cx2: -0.5, cy2: 1, x2: -1, y2: 1, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4  )],'Retreat Left');
final Path RetreatRight = RetreatLeft.scale(1,-1)..name='Retreat Right';
final Path QuarterLeft = Path([
      Movement.fromData(beats: 1.5, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Quarter Left');
final Path QuarterRight = QuarterLeft.scale(1,-1)..name='Quarter Right';
final Path HingeLeft = Path([
      Movement.fromData(beats: 1.5, hands: Hands.GRIPLEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1  )],'Hinge Left');
final Path HingeRight = HingeLeft.scale(1,-1)..name='Hinge Right';
final Path BackHingeLeft = Path([
      Movement.fromData(beats: 1.5, hands: Hands.GRIPLEFT, cx1: -0.55, cy1: 0, cx2: -1, cy2: 0.45, x2: -1, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'BackHinge Left');
final Path BackHingeRight = BackHingeLeft.scale(1,-1)..name='BackHinge Right';
final Path HalfHingeLeft = Path([
      Movement.fromData(beats: 0.75, hands: Hands.GRIPLEFT, cx1: 0.265, cy1: 0, cx2: 0.52, cy2: 0.105, x2: 0.707, y2: 0.293  )],'HalfHinge Left');
final Path HalfHingeRight = HalfHingeLeft.scale(1,-1)..name='HalfHinge Right';
final Path HalfBackHingeLeft = Path([
      Movement.fromData(beats: 0.75, hands: Hands.GRIPLEFT, cx1: -0.265, cy1: 0, cx2: -0.52, cy2: 0.105, x2: -0.707, y2: 0.293, cx3: 0.265, cx4: 0.52, cy4: -0.105, x4: 0.707, y4: -0.293  )],'HalfBackHinge Left');
final Path HalfBackHingeRight = HalfBackHingeLeft.scale(1,-1)..name='HalfBackHinge Right';
final Path BackRunLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.LEFT, cx1: -1.333, cy1: 0, cx2: -1.333, cy2: 2, x2: 0, y2: 2, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2  )],'BackRun Left');
final Path BackRunRight = BackRunLeft.scale(1,-1)..name='BackRun Right';
final Path FoldLeft = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 3.5, cy2: 2, x2: 2, y2: 2  )],'Fold Left');
final Path FoldRight = FoldLeft.scale(1,-1)..name='Fold Right';
final Path CrossFoldLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 2.5, cy2: 4, x2: 2, y2: 4  )],'Cross Fold Left');
final Path CrossFoldRight = CrossFoldLeft.scale(1,-1)..name='Cross Fold Right';
final Path LeadLeft = Path([
      Movement.fromData(beats: 1.5, hands: Hands.NONE, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1  )],'Lead Left');
final Path LeadLeftPassing = Path([
      Movement.fromData(beats: 1.5, hands: Hands.NONE, cx1: 0.3, cy1: 0.434, cx2: 0.566, cy2: 0.7, x2: 1, y2: 1, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Lead Left Passing');
final Path LeadRightPassing = Path([
      Movement.fromData(beats: 1.5, hands: Hands.NONE, cx1: 0.8, cy1: 0.25, cx2: 1.344, cy2: -0.2, x2: 1, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Lead Right Passing');
final Path LeadRight = LeadLeft.scale(1,-1)..name='Lead Right';
final Path WheelThruRight = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.5, cy1: 0, cx2: 3, cy2: -.5, x2: 3, y2: -3  )],'Wheel Thru Right');
final Path WheelThruLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.5, cy1: 0, cx2: 3, cy2: .5, x2: 3, y2: 3  )],'Wheel Thru Left');
final Path EighthLeft = Path([
      Movement.fromData(beats: 0.75, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.265, cx4: 0.52, cy4: 0.105, x4: 0.707, y4: 0.293  )],'Eighth Left');
final Path EighthRight = EighthLeft.scale(1,-1)..name='Eighth Right';
final Path n38Left = Path([
      Movement.fromData(beats: 2.25, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 1.333, cx4: 1.414, cy4: 1, x4: 0.707, y4: 1.707  )],'3/8 Left');
final Path n38Right = n38Left.scale(1,-1)..name='3/8 Right';
final Path LeadLeft_12 = Path([
      Movement.fromData(beats: 0.75, hands: Hands.NONE, cx1: 0.265, cy1: 0, cx2: 0.520, cy2: 0.105, x2: 0.707, y2: 0.293  )],'Lead Left 1/2');
final Path LeadRight_12 = LeadLeft_12.scale(1,-1)..name='Lead Right 1/2';
final Path SashayLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0.75, cy1: 0, cx2: 0.75, cy2: 2, x2: 0, y2: 2, cx3: 0, cx4: 0, cy4: 0, x4: 0, y4: 0  )],'Sashay Left');
final Path SashayRight = SashayLeft.scale(1,-1)..name='Sashay Right';
final Path BackSashayLeft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -0.75, cy1: 0, cx2: -0.75, cy2: 2, x2: 0, y2: 2, cx3: 0, cx4: 0, cy4: 0, x4: 0, y4: 0  )],'BackSashay Left');
final Path BackSashayRight = BackSashayLeft.scale(1,-1)..name='BackSashay Right';
final Path SxtnthLeft = Path([
      Movement.fromData(beats: 0.1, hands: Hands.BOTH, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.1313, cx4: 0.2614, cy4: 0.0259, x4: 0.3827, y4: 0.0761  )],'Sxtnth Left');
final Path SxtnthRight = SxtnthLeft.scale(1,-1)..name='Sxtnth Right';
final Path CrossLeftSave = Path([
      Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: 0, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4  )],'Cross Left Save');
final Path CrossLeft = Path([
      Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: -.5, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4  )],'Cross Left');
final Path CrossRight = CrossLeft.scale(1,-1)..name='Cross Right';
final Path CounterRotateRight_2_0 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 0.5, cx2: 1.5, cy2: 0.5, x2: 2, y2: 0, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 2 0');
final Path CounterRotateLeft_2_0 = CounterRotateRight_2_0.scale(1,-1)..name='Counter Rotate Left 2 0';
final Path CounterRotateLeft_0_2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 0.5, cx2: 0.5, cy2: 1.5, x2: 0, y2: 2, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left 0 2');
final Path CounterRotateRight_0_m2 = CounterRotateLeft_0_2.scale(1,-1)..name='Counter Rotate Right 0 -2';
final Path CounterRotateRight_0_m4 = CounterRotateRight_0_m2.scale(2,2)..name='Counter Rotate Right 0 -4';
final Path CounterRotateLeft_1_2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: .75, cy1: 0.25, cx2: 1.25, cy2: 1.25, x2: 1, y2: 2, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left 1 2');
final Path CounterRotateLeft_2_4 = CounterRotateLeft_1_2.scale(2,2)..name='Counter Rotate Left 2 4';
final Path CounterRotateRight_1_m2 = CounterRotateLeft_1_2.scale(1,-1)..name='Counter Rotate Right 1 -2';
final Path CounterRotateRight_0_2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -0.5, cy2: 1.5, x2: 0, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 0 2');
final Path CounterRotateLeft_0_m2 = CounterRotateRight_0_2.scale(1,-1)..name='Counter Rotate Left 0 -2';
final Path CounterRotateRight_1_2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0, cy1: 0.5, cx2: 0, cy2: 2, x2: 1, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 1 2');
final Path CounterRotateLeft_1_m2 = CounterRotateRight_1_2.scale(1,-1)..name='Counter Rotate Left 1 -2';
final Path CounterRotateLeft_m2_0 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -1.5, cy2: 0.5, x2: -2, y2: 0, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left -2 0');
final Path CounterRotateRight_m2_0 = CounterRotateLeft_m2_0.scale(1,-1)..name='Counter Rotate Right -2 0';
final Path CounterRotateRight_3_1 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 2, cy2: 1.5, x2: 3, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 3 1');
final Path CounterRotateLeft_3_m1 = CounterRotateRight_3_1.scale(1,-1)..name='Counter Rotate Left 3 -1';
final Path CounterRotateRight_3_m1 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1, cy1: 1, cx2: 2.5, cy2: 0, x2: 3, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 3 -1');
final Path CounterRotateLeft_3_1 = CounterRotateRight_3_m1.scale(1,-1)..name='Counter Rotate Left 3 1';
final Path CounterRotateRight_0_3 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -1, cy2: 2.5, x2: 0, y2: 3, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 0 3');
final Path CounterRotateLeft_0_m3 = CounterRotateRight_0_3.scale(1,-1)..name='Counter Rotate Left 0 -3';
final Path CounterRotateRight_5_1 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 4, cy2: 1.5, x2: 5, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 5 1');
final Path CounterRotateLeft_5_m1 = CounterRotateRight_5_1.scale(1,-1)..name='Counter Rotate Left 5 -1';
final Path CounterRotateRight_5_m1 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 1, cx2: 4, cy2: 0.5, x2: 5, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 5 -1');
final Path CounterRotateRight_4p5_m1p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0.75, cx2: 3.75, cy2: 0, x2: 4.5, y2: -1.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 4.5 -1.5');
final Path CounterRotateRight_1p5_m4p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -0.75, cx2: 2.25, cy2: -3, x2: 1.5, y2: -4.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 1.5 -4.5');
final Path CounterRotateLeft_m0p5_2p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: .5, cy1: 0.75, cx2: 0.25, cy2: 1.75, x2: -0.5, y2: 2.5, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left -0.5 2.5');
final Path CounterRotateRight_m0p5_m2p5 = CounterRotateLeft_m0p5_2p5.scale(1,-1)..name='Counter Rotate Right -0.5 -2.5';
final Path CounterRotateLeft_2p5_m0p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: .5, cy1: -0.75, cx2: 1.75, cy2: -1, x2: 2.5, y2: -0.5, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left 2.5 -0.5');
final Path CounterRotateRight_2p5_0p5 = CounterRotateLeft_2p5_m0p5.scale(1,-1)..name='Counter Rotate Right 2.5 0.5';
final Path CounterRotateRight_1p5_3p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 1.25, cx2: 0.25, cy2: 3.0, x2: 1.5, y2: 3.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 1.5 3.5');
final Path CounterRotateRight_3p5_1p5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1.25, cx2: 2.25, cy2: 2.0, x2: 3.5, y2: 1.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 3.5 1.5');
final Path CounterRotateLeft_5_1 = CounterRotateRight_5_m1.scale(1,-1)..name='Counter Rotate Left 5 1';
final Path CounterRotateRight_1_m5 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -1, cx2: 2, cy2: -3.5, x2: 1, y2: -5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 1 -5');
final Path CounterRotateLeft_1_5 = CounterRotateRight_1_m5.scale(1,-1)..name='Counter Rotate Left 1 5';
final Path CounterRotateLeft_m1_3 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 0, cy2: 2.5, x2: -1, y2: 3, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'Counter Rotate Left -1 3');
final Path CounterRotateRight_m1_m3 = CounterRotateLeft_m1_3.scale(1,-1)..name='Counter Rotate Right -1 -3';
final Path CounterRotateRight_4_2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1.5, cx2: 2.5, cy2: 2.5, x2: 4, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 4 2');
final Path CounterRotateRight_2_4 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 1.5, cx2: 0.5, cy2: 3.5, x2: 2, y2: 4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 2 4');
final Path CounterRotateLeft_4_m2 = CounterRotateRight_4_2.scale(1,-1)..name='Counter Rotate Left 4 -2';
final Path CounterRotateRight_m2_m4 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: -1.5, cx2: -0.5, cy2: -3.5, x2: -2, y2: -4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right -2 -4');
final Path CounterRotateLeft_m2_4 = CounterRotateRight_m2_m4.scale(1,-1)..name='Counter Rotate Left -2 4';
final Path CounterRotateRight_4_m2 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0.5, cx2: 3.5, cy2: -0.5, x2: 4, y2: -2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 4 -2');
final Path CounterRotateLeft_4_2 = CounterRotateRight_4_m2.scale(1,-1)..name='Counter Rotate Left 4 2';
final Path CounterRotateRight_2_m4 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -0.5, cx2: 2.5, cy2: -2.5, x2: 2, y2: -4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Right 2 -4');
final Path CounterRotateLeft_1_1 = Path([
      Movement.fromData(beats: 2, hands: Hands.NONE, cx1: 0, cy1: 0.5, cx2: 0.5, cy2: 1, x2: 1, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Counter Rotate Left 1 1');
final Path CounterRotateLeft_2_2 = CounterRotateLeft_1_1.scale(2,2)..name='Counter Rotate Left 2 2';
final Path CounterRotateLeft_1p414_1p414 = CounterRotateLeft_1_1.scale(1.414,1.414)..name='Counter Rotate Left 1.414 1.414';
final Path cl = Path([
      Movement.fromData(beats: 1, hands: Hands.GRIPBOTH, cx1: 0.27, cy1: 0.64, cx2: 0.77, cy2: 1.14, x2: 1.41, y2: 1.41, cx3: 0.265, cx4: 0.52, cy4: -0.105, x4: 0.707, y4: -0.293  )],'cl');
final Path cr = cl.scale(1,-1)..name='cr';
final Path incircle2 = Path([
      Movement.fromData(beats: 1, hands: Hands.BOTH, cx1: 0.3, cy1: 0, cx2: 0.3, cy2: 0, x2: 0.59, y2: 0, cx3: 1, cx4: 2, cy4: 1, x4: 3, y4: 2  )],'incircle2');
final Path incircle3 = incircle2.scale(1,-1)..name='incircle3';
final Path ssqtr = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: 0, cy1: 0.385, cx2: 0.315, cy2: 0.7, x2: 0.7, y2: 0.7, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'ssqtr');
final Path ssqtrright = Path([
      Movement.fromData(beats: 1, hands: Hands.NONE, cx1: 0, cy1: -0.385, cx2: 0.315, cy2: -0.7, x2: 0.7, y2: -0.7, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1  )],'ssqtr right');
final Path Pivotforwardleft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0, cy1: 1.333, cx2: 2, cy2: 1.333, x2: 2, y2: 0, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2  )],'Pivot forward left');
final Path Pivotforwardright = Pivotforwardleft.scale(1,-1)..name='Pivot forward right';
final Path Pivotbackwardleft = Path([
      Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 0, cy1: 1.333, cx2: -2, cy2: 1.333, x2: -2, y2: 0, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2  )],'Pivot backward left');
final Path Pivotbackwardright = Pivotbackwardleft.scale(1,-1)..name='Pivot backward right';
final Path Sxtnth = Path([
      Movement.fromData(beats: 1.125, hands: Hands.NONE, cx1: 0.3939, cy1: 0, cx2: 0.784134, cy2: -0.0776224, x2: 1.148050, y2: -0.2283614  )],'Sxtnth');
final Path LeadLeft_14 = Path([
      Movement.fromData(beats: 0.375, hands: Hands.NONE, cx1: 0.1313, cy1: 0, cx2: 0.261378050, cy2: 0.0258741328, x2: 0.38268343, y2: 0.076120467  )],'Lead Left 1/4');
final Path LeadRight_14 = LeadLeft_14.scale(1,-1)..name='Lead Right 1/4';
final Path HingeLeft_14 = LeadLeft_14.changehands(Hands.LEFT)..name='Hinge Left 1/4';
final Path HingeRight_14 = HingeLeft_14.scale(1,-1)..name='Hinge Right 1/4';
final Path CircleLeftHalf = Path([
      Movement.fromData(beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2  )],'Circle Left Half');
final Path CircleLeftQuarter = Path([
      Movement.fromData(beats: 1.5, hands: Hands.GRIPBOTH, cx1: 0, cy1: 0.39, cx2: 0.318, cy2: 0.707, x2: 0.707, y2: 0.707, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'Circle Left Quarter');
final Path CircleRightQuarter = CircleLeftQuarter.scale(1,-1)..name='Circle Right Quarter';
final Path Forwardp5 = Forward.changeBeats(0.5).scale(0.5,1)..name='Forward .5';
final Path Forward_1p5 = Forward.changeBeats(1.5).scale(1.5,1)..name='Forward 1.5';
final Path Forward_2 = Forward.changeBeats(2).scale(2,1)..name='Forward 2';
final Path Forward_3 = Forward.changeBeats(3).scale(3,1)..name='Forward 3';
final Path Forward_4 = Forward.changeBeats(4).scale(4,1)..name='Forward 4';
final Path Forward_5 = Forward.changeBeats(5).scale(5,1)..name='Forward 5';
final Path Forward_6 = Forward.changeBeats(6).scale(6,1)..name='Forward 6';
final Path Back_2 = Back.changeBeats(2).scale(2,1)..name='Back 2';
final Path SlowForward = Forward.changeBeats(2)..name='Slow Forward';
final Path SlowForward_2 = Forward_2.changeBeats(3)..name='Slow Forward 2';
final Path ExtendLeft_2 = ExtendLeft.changeBeats(2).scale(2,2)..name='Extend Left 2';
final Path ExtendRight_2 = ExtendLeft_2.scale(1,-1)..name='Extend Right 2';
final Path ExtendLeft_4 = ExtendLeft.changeBeats(3).scale(4,4)..name='Extend Left 4';
final Path ExtendRight_4 = ExtendLeft_4.scale(1,-1)..name='Extend Right 4';
final Path PullLeft = ExtendLeft.changehands(Hands.RIGHT)..name='Pull Left';
final Path PullRight = PullLeft.scale(1,-1)..name='Pull Right';
final Path PassThru = (ExtendLeft.scale(1,0.5)+ExtendRight.scale(1,0.5))..name='Pass Thru';
final Path PullBy = (PullLeft.scale(1,0.5)+ExtendRight.scale(1,0.5))..name='Pull By';
final Path SwingLeft = RunLeft.changehands(Hands.GRIPLEFT)..name='Swing Left';
final Path SwingRight = SwingLeft.scale(1,-1)..name='Swing Right';
final Path CastLeft = (SwingLeft+HingeLeft)..name='Cast Left';
final Path CastRight = CastLeft.scale(1,-1)..name='Cast Right';
final Path LeadLeft_2 = LeadLeft.changeBeats(3).scale(2,2)..name='Lead Left 2';
final Path LeadRight_2 = LeadLeft_2.scale(1,-1)..name='Lead Right 2';
final Path LeadLeft_3 = LeadLeft.changeBeats(4.5).scale(3,3)..name='Lead Left 3';
final Path LeadRight_3 = LeadLeft_3.scale(1,-1)..name='Lead Right 3';
final Path BeauWheel = BackRunRight.changehands(Hands.GRIPRIGHT)..name='Beau Wheel';
final Path BelleWheel = Path([
      Movement.fromData(beats: 3, hands: Hands.GRIPLEFT, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: 2, x2: 0, y2: 2, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2  )],'Belle Wheel');
final Path BeauReverseWheel = Path([
      Movement.fromData(beats: 3, hands: Hands.GRIPRIGHT, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: -2, x2: 0, y2: -2, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2  )],'Beau Reverse Wheel');
final Path BelleReverseWheel = BackRunLeft.changehands(Hands.GRIPLEFT)..name='Belle Reverse Wheel';
final Path BeauCross = Path([
      Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 4, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )],'Beau Cross');
final Path BelleCross = Path([
      Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: .8, cy2: 2, x2: 4, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4  )],'Belle Cross');

final List<Path> AllMoves = [Stand,StandAhead,StandAlone,StandLeft,StandRight,FinalStand,FinalLeft,FinalRight,Forward,Back,RunLeft,RunRight,UmTurnLeft,UmTurnRight,FlipLeft,FlipRight,DodgeLeft,DodgeRight,ExtendLeft,ExtendRight,RetreatLeft,RetreatRight,QuarterLeft,QuarterRight,HingeLeft,HingeRight,BackHingeLeft,BackHingeRight,HalfHingeLeft,HalfHingeRight,HalfBackHingeLeft,HalfBackHingeRight,BackRunLeft,BackRunRight,FoldLeft,FoldRight,CrossFoldLeft,CrossFoldRight,LeadLeft,LeadLeftPassing,LeadRightPassing,LeadRight,WheelThruRight,WheelThruLeft,EighthLeft,EighthRight,n38Left,n38Right,LeadLeft_12,LeadRight_12,SashayLeft,SashayRight,BackSashayLeft,BackSashayRight,SxtnthLeft,SxtnthRight,CrossLeftSave,CrossLeft,CrossRight,CounterRotateRight_2_0,CounterRotateLeft_2_0,CounterRotateLeft_0_2,CounterRotateRight_0_m2,CounterRotateRight_0_m4,CounterRotateLeft_1_2,CounterRotateLeft_2_4,CounterRotateRight_1_m2,CounterRotateRight_0_2,CounterRotateLeft_0_m2,CounterRotateRight_1_2,CounterRotateLeft_1_m2,CounterRotateLeft_m2_0,CounterRotateRight_m2_0,CounterRotateRight_3_1,CounterRotateLeft_3_m1,CounterRotateRight_3_m1,CounterRotateLeft_3_1,CounterRotateRight_0_3,CounterRotateLeft_0_m3,CounterRotateRight_5_1,CounterRotateLeft_5_m1,CounterRotateRight_5_m1,CounterRotateRight_4p5_m1p5,CounterRotateRight_1p5_m4p5,CounterRotateLeft_m0p5_2p5,CounterRotateRight_m0p5_m2p5,CounterRotateLeft_2p5_m0p5,CounterRotateRight_2p5_0p5,CounterRotateRight_1p5_3p5,CounterRotateRight_3p5_1p5,CounterRotateLeft_5_1,CounterRotateRight_1_m5,CounterRotateLeft_1_5,CounterRotateLeft_m1_3,CounterRotateRight_m1_m3,CounterRotateRight_4_2,CounterRotateRight_2_4,CounterRotateLeft_4_m2,CounterRotateRight_m2_m4,CounterRotateLeft_m2_4,CounterRotateRight_4_m2,CounterRotateLeft_4_2,CounterRotateRight_2_m4,CounterRotateLeft_1_1,CounterRotateLeft_2_2,CounterRotateLeft_1p414_1p414,cl,cr,incircle2,incircle3,ssqtr,ssqtrright,Pivotforwardleft,Pivotforwardright,Pivotbackwardleft,Pivotbackwardright,Sxtnth,LeadLeft_14,LeadRight_14,HingeLeft_14,HingeRight_14,CircleLeftHalf,CircleLeftQuarter,CircleRightQuarter,Forwardp5,Forward_1p5,Forward_2,Forward_3,Forward_4,Forward_5,Forward_6,Back_2,SlowForward,SlowForward_2,ExtendLeft_2,ExtendRight_2,ExtendLeft_4,ExtendRight_4,PullLeft,PullRight,PassThru,PullBy,SwingLeft,SwingRight,CastLeft,CastRight,LeadLeft_2,LeadRight_2,LeadLeft_3,LeadRight_3,BeauWheel,BelleWheel,BeauReverseWheel,BelleReverseWheel,BeauCross,BelleCross];
