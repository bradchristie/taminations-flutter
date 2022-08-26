import '../common.dart';
class Paths {
  static final Path Stand = Path([Movement.fromData(
      beats: 1, hands: Hands.BOTH, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0
  )],'Stand');
  static final Path StandAlone = Stand..changehands(Hands.NONE);
  static final Path StandLeft = Stand..changehands(Hands.LEFT);
  static final Path StandRight = Stand..changehands(Hands.RIGHT);
  static final Path FinalStand = Stand..changehands(Hands.GRIPBOTH);
  static final Path FinalLeft = Stand..changehands(Hands.GRIPLEFT);
  static final Path FinalRight = Stand..changehands(Hands.GRIPRIGHT);
  static final Path Forward = Path([Movement.fromData(
      beats: 1, hands: Hands.NONE, cx1: 0.333, cy1: 0, cx2: 0.667, cy2: 0, x2: 1, y2: 0
  )],'Forward');
  static final Path Back = Path([Movement.fromData(
      beats: 1, hands: Hands.NONE, cx1: -0.333, cy1: 0, cx2: -0.667, cy2: 0, x2: -1, y2: 0, cx3: 0.5, cx4: 0.5, cy4: 0, x4: 1, y4: 0
  )],'Back');
  static final Path RunLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: 2, x2: 0, y2: 2
  )],'Run Left');
  static final Path RunRight = RunLeft..scale(1,-1);
  static final Path UmTurnLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2
  )],'U-Turn Left');
  static final Path UmTurnRight = UmTurnLeft..scale(1,-1);
  static final Path FlipLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0.1, cy1: 0, cx2: 0.1, cy2: 2, x2: 0, y2: 2, cx3: 1, cx4: 1, cy4: 2, x4: 0, y4: 2
  )],'Flip Left');
  static final Path FlipRight = FlipLeft..scale(1,-1);
  static final Path DodgeLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 2, x2: 0, y2: 2, cx3: 4, cx4: 4, cy4: 1, x4: 8, y4: 1
  )],'Dodge Left');
  static final Path DodgeRight = DodgeLeft..scale(1,-1);
  static final Path ExtendLeft = Path([Movement.fromData(
      beats: 1, hands: Hands.NONE, cx1: 0.5, cy1: 0, cx2: 0.5, cy2: 1, x2: 1, y2: 1, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4
  )],'Extend Left');
  static final Path ExtendRight = ExtendLeft..scale(1,-1);
  static final Path RetreatLeft = Path([Movement.fromData(
      beats: 1, hands: Hands.NONE, cx1: -0.5, cy1: 0, cx2: -0.5, cy2: 1, x2: -1, y2: 1, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4
  )],'Retreat Left');
  static final Path RetreatRight = RetreatLeft..scale(1,-1);
  static final Path QuarterLeft = Path([Movement.fromData(
      beats: 1.5, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Quarter Left');
  static final Path QuarterRight = QuarterLeft..scale(1,-1);
  static final Path HingeLeft = Path([Movement.fromData(
      beats: 1.5, hands: Hands.GRIPLEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1
  )],'Hinge Left');
  static final Path HingeRight = HingeLeft..scale(1,-1);
  static final Path BackHingeLeft = Path([Movement.fromData(
      beats: 1.5, hands: Hands.GRIPLEFT, cx1: -0.55, cy1: 0, cx2: -1, cy2: 0.45, x2: -1, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'BackHinge Left');
  static final Path BackHingeRight = BackHingeLeft..scale(1,-1);
  static final Path HalfHingeLeft = Path([Movement.fromData(
      beats: 0.75, hands: Hands.GRIPLEFT, cx1: 0.265, cy1: 0, cx2: 0.52, cy2: 0.105, x2: 0.707, y2: 0.293
  )],'HalfHinge Left');
  static final Path HalfHingeRight = HalfHingeLeft..scale(1,-1);
  static final Path HalfBackHingeLeft = Path([Movement.fromData(
      beats: 0.75, hands: Hands.GRIPLEFT, cx1: -0.265, cy1: 0, cx2: -0.52, cy2: 0.105, x2: -0.707, y2: 0.293, cx3: 0.265, cx4: 0.52, cy4: -0.105, x4: 0.707, y4: -0.293
  )],'HalfBackHinge Left');
  static final Path HalfBackHingeRight = HalfBackHingeLeft..scale(1,-1);
  static final Path BackRunLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.LEFT, cx1: -1.333, cy1: 0, cx2: -1.333, cy2: 2, x2: 0, y2: 2, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2
  )],'BackRun Left');
  static final Path BackRunRight = BackRunLeft..scale(1,-1);
  static final Path FoldLeft = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 3.5, cy2: 2, x2: 2, y2: 2
  )],'Fold Left');
  static final Path FoldRight = FoldLeft..scale(1,-1);
  static final Path CrossFoldLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 2.5, cy2: 4, x2: 2, y2: 4
  )],'Cross Fold Left');
  static final Path CrossFoldRight = CrossFoldLeft..scale(1,-1);
  static final Path LeadLeft = Path([Movement.fromData(
      beats: 1.5, hands: Hands.NONE, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1
  )],'Lead Left');
  static final Path LeadLeftPassing = Path([Movement.fromData(
      beats: 1.5, hands: Hands.NONE, cx1: 0.3, cy1: 0.434, cx2: 0.566, cy2: 0.7, x2: 1, y2: 1, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Lead Left Passing');
  static final Path LeadRightPassing = Path([Movement.fromData(
      beats: 1.5, hands: Hands.NONE, cx1: 0.8, cy1: 0.25, cx2: 1.344, cy2: -0.2, x2: 1, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Lead Right Passing');
  static final Path LeadRight = LeadLeft..scale(1,-1);
  static final Path WheelThruRight = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 2.5, cy1: 0, cx2: 3, cy2: -.5, x2: 3, y2: -3
  )],'Wheel Thru Right');
  static final Path WheelThruLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 2.5, cy1: 0, cx2: 3, cy2: .5, x2: 3, y2: 3
  )],'Wheel Thru Left');
  static final Path EighthLeft = Path([Movement.fromData(
      beats: 0.75, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.265, cx4: 0.52, cy4: 0.105, x4: 0.707, y4: 0.293
  )],'Eighth Left');
  static final Path EighthRight = EighthLeft..scale(1,-1);
  static final Path n38Left = Path([Movement.fromData(
      beats: 2.25, hands: Hands.NONE, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 1.333, cx4: 1.414, cy4: 1, x4: 0.707, y4: 1.707
  )],'3/8 Left');
  static final Path n38Right = n38Left..scale(1,-1);
  static final Path LeadLeft12 = Path([Movement.fromData(
      beats: 0.75, hands: Hands.NONE, cx1: 0.265, cy1: 0, cx2: 0.520, cy2: 0.105, x2: 0.707, y2: 0.293
  )],'Lead Left 1/2');
  static final Path LeadRight12 = LeadLeft12..scale(1,-1);
  static final Path SashayLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0.75, cy1: 0, cx2: 0.75, cy2: 2, x2: 0, y2: 2, cx3: 0, cx4: 0, cy4: 0, x4: 0, y4: 0
  )],'Sashay Left');
  static final Path SashayRight = SashayLeft..scale(1,-1);
  static final Path BackSashayLeft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: -0.75, cy1: 0, cx2: -0.75, cy2: 2, x2: 0, y2: 2, cx3: 0, cx4: 0, cy4: 0, x4: 0, y4: 0
  )],'BackSashay Left');
  static final Path BackSashayRight = BackSashayLeft..scale(1,-1);
  static final Path SxtnthLeft = Path([Movement.fromData(
      beats: 0.1, hands: Hands.BOTH, cx1: 0, cy1: 0, cx2: 0, cy2: 0, x2: 0, y2: 0, cx3: 0.1313, cx4: 0.2614, cy4: 0.0259, x4: 0.3827, y4: 0.0761
  )],'Sxtnth Left');
  static final Path SxtnthRight = SxtnthLeft..scale(1,-1);
  static final Path CrossLeftSave = Path([Movement.fromData(
      beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: 0, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4
  )],'Cross Left Save');
  static final Path CrossLeft = Path([Movement.fromData(
      beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: -.5, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4
  )],'Cross Left');
  static final Path CrossRight = CrossLeft..scale(1,-1);
  static final Path CounterRotateRight20 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 0.5, cx2: 1.5, cy2: 0.5, x2: 2, y2: 0, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 2 0');
  static final Path CounterRotateLeft20 = CounterRotateRight20..scale(1,-1);
  static final Path CounterRotateLeft02 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 0.5, cx2: 0.5, cy2: 1.5, x2: 0, y2: 2, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left 0 2');
  static final Path CounterRotateRight0m2 = CounterRotateLeft02..scale(1,-1);
  static final Path CounterRotateRight0m4 = CounterRotateRight0m2..scale(2,2);
  static final Path CounterRotateLeft12 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: .75, cy1: 0.25, cx2: 1.25, cy2: 1.25, x2: 1, y2: 2, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left 1 2');
  static final Path CounterRotateLeft24 = CounterRotateLeft12..scale(2,2);
  static final Path CounterRotateRight1m2 = CounterRotateLeft12..scale(1,-1);
  static final Path CounterRotateRight02 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -0.5, cy2: 1.5, x2: 0, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 0 2');
  static final Path CounterRotateLeft0m2 = CounterRotateRight02..scale(1,-1);
  static final Path CounterRotateRight12 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0, cy1: 0.5, cx2: 0, cy2: 2, x2: 1, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 1 2');
  static final Path CounterRotateLeft1m2 = CounterRotateRight12..scale(1,-1);
  static final Path CounterRotateLeftm20 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -1.5, cy2: 0.5, x2: -2, y2: 0, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left -2 0');
  static final Path CounterRotateRightm20 = CounterRotateLeftm20..scale(1,-1);
  static final Path CounterRotateRight31 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 2, cy2: 1.5, x2: 3, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 3 1');
  static final Path CounterRotateLeft3m1 = CounterRotateRight31..scale(1,-1);
  static final Path CounterRotateRight3m1 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1, cy1: 1, cx2: 2.5, cy2: 0, x2: 3, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 3 -1');
  static final Path CounterRotateLeft31 = CounterRotateRight3m1..scale(1,-1);
  static final Path CounterRotateRight03 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 0.5, cx2: -1, cy2: 2.5, x2: 0, y2: 3, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 0 3');
  static final Path CounterRotateLeft0m3 = CounterRotateRight03..scale(1,-1);
  static final Path CounterRotateRight51 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 4, cy2: 1.5, x2: 5, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 5 1');
  static final Path CounterRotateLeft5m1 = CounterRotateRight51..scale(1,-1);
  static final Path CounterRotateRight5m1 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 1, cx2: 4, cy2: 0.5, x2: 5, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 5 -1');
  static final Path CounterRotateRight4p5m1p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0.75, cx2: 3.75, cy2: 0, x2: 4.5, y2: -1.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 4.5 -1.5');
  static final Path CounterRotateRight1p5m4p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -0.75, cx2: 2.25, cy2: -3, x2: 1.5, y2: -4.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 1.5 -4.5');
  static final Path CounterRotateLeftm0p52p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: .5, cy1: 0.75, cx2: 0.25, cy2: 1.75, x2: -0.5, y2: 2.5, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left -0.5 2.5');
  static final Path CounterRotateRightm0p5m2p5 = CounterRotateLeftm0p52p5..scale(1,-1);
  static final Path CounterRotateLeft2p5m0p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: .5, cy1: -0.75, cx2: 1.75, cy2: -1, x2: 2.5, y2: -0.5, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left 2.5 -0.5');
  static final Path CounterRotateRight2p50p5 = CounterRotateLeft2p5m0p5..scale(1,-1);
  static final Path CounterRotateRight1p53p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 1.25, cx2: 0.25, cy2: 3.0, x2: 1.5, y2: 3.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 1.5 3.5');
  static final Path CounterRotateRight3p51p5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1.25, cx2: 2.25, cy2: 2.0, x2: 3.5, y2: 1.5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 3.5 1.5');
  static final Path CounterRotateLeft51 = CounterRotateRight5m1..scale(1,-1);
  static final Path CounterRotateRight1m5 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -1, cx2: 2, cy2: -3.5, x2: 1, y2: -5, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 1 -5');
  static final Path CounterRotateLeft15 = CounterRotateRight1m5..scale(1,-1);
  static final Path CounterRotateLeftm13 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1, cx2: 0, cy2: 2.5, x2: -1, y2: 3, cx3: 0.55, cx4: 1, cy4: 0.45, x4: 1, y4: 1
  )],'Counter Rotate Left -1 3');
  static final Path CounterRotateRightm1m3 = CounterRotateLeftm13..scale(1,-1);
  static final Path CounterRotateRight42 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: 1.5, cx2: 2.5, cy2: 2.5, x2: 4, y2: 2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 4 2');
  static final Path CounterRotateRight24 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: -0.5, cy1: 1.5, cx2: 0.5, cy2: 3.5, x2: 2, y2: 4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 2 4');
  static final Path CounterRotateLeft4m2 = CounterRotateRight42..scale(1,-1);
  static final Path CounterRotateRightm2m4 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0.5, cy1: -1.5, cx2: -0.5, cy2: -3.5, x2: -2, y2: -4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right -2 -4');
  static final Path CounterRotateLeftm24 = CounterRotateRightm2m4..scale(1,-1);
  static final Path CounterRotateRight4m2 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: 0.5, cx2: 3.5, cy2: -0.5, x2: 4, y2: -2, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 4 -2');
  static final Path CounterRotateLeft42 = CounterRotateRight4m2..scale(1,-1);
  static final Path CounterRotateRight2m4 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 1.5, cy1: -0.5, cx2: 2.5, cy2: -2.5, x2: 2, y2: -4, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Right 2 -4');
  static final Path CounterRotateLeft11 = Path([Movement.fromData(
      beats: 2, hands: Hands.NONE, cx1: 0, cy1: 0.5, cx2: 0.5, cy2: 1, x2: 1, y2: 1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Counter Rotate Left 1 1');
  static final Path CounterRotateLeft22 = CounterRotateLeft11..scale(2,2);
  static final Path CounterRotateLeft1p4141p414 = CounterRotateLeft11..scale(1.414,1.414);
  static final Path cl = Path([Movement.fromData(
      beats: 1, hands: Hands.GRIPBOTH, cx1: 0.27, cy1: 0.64, cx2: 0.77, cy2: 1.14, x2: 1.41, y2: 1.41, cx3: 0.265, cx4: 0.52, cy4: -0.105, x4: 0.707, y4: -0.293
  )],'cl');
  static final Path cr = cl..scale(1,-1);
  static final Path incircle2 = Path([Movement.fromData(
      beats: 1, hands: Hands.BOTH, cx1: 0.3, cy1: 0, cx2: 0.3, cy2: 0, x2: 0.59, y2: 0, cx3: 1, cx4: 2, cy4: 1, x4: 3, y4: 2
  )],'incircle2');
  static final Path incircle3 = incircle2..scale(1,-1);
  static final Path ssqtr = Path([Movement.fromData(
      beats: 1, hands: Hands.NONE, cx1: 0, cy1: 0.385, cx2: 0.315, cy2: 0.7, x2: 0.7, y2: 0.7, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'ssqtr');
  static final Path Pivotforwardleft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0, cy1: 1.333, cx2: 2, cy2: 1.333, x2: 2, y2: 0, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2
  )],'Pivot forward left');
  static final Path Pivotforwardright = Pivotforwardleft..scale(1,-1);
  static final Path Pivotbackwardleft = Path([Movement.fromData(
      beats: 3, hands: Hands.NONE, cx1: 0, cy1: 1.333, cx2: -2, cy2: 1.333, x2: -2, y2: 0, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2
  )],'Pivot backward left');
  static final Path Pivotbackwardright = Pivotbackwardleft..scale(1,-1);
  static final Path Sxtnth = Path([Movement.fromData(
      beats: 1.125, hands: Hands.NONE, cx1: 0.3939, cy1: 0, cx2: 0.7842, cy2: -0.0777, x2: 1.1481, y2: -0.2283
  )],'Sxtnth');
  static final Path H16th = Path([Movement.fromData(
      beats: 0.375, hands: Hands.LEFT, cx1: 0.1313, cy1: 0, cx2: 0.2614, cy2: 0.0259, x2: 0.3827, y2: 0.0761
  )],'H16th');
  static final Path CircleLeftHalf = Path([Movement.fromData(
      beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2
  )],'Circle Left Half');
  static final Path CircleLeftQuarter = Path([Movement.fromData(
      beats: 1.5, hands: Hands.GRIPBOTH, cx1: 0, cy1: 0.39, cx2: 0.318, cy2: 0.707, x2: 0.707, y2: 0.707, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1
  )],'Circle Left Quarter');
  static final Path CircleRightQuarter = CircleLeftQuarter..scale(1,-1);
  static final Path Forwardp5 = Forward..scale(0.5,1);
  static final Path Forward1p5 = Forward..scale(1.5,1);
  static final Path Forward2 = Forward..scale(2,1);
  static final Path Forward3 = Forward..scale(3,1);
  static final Path Forward4 = Forward..scale(4,1);
  static final Path Forward5 = Forward..scale(5,1);
  static final Path Forward6 = Forward..scale(6,1);
  static final Path Back2 = Back..scale(2,1);
  static final Path SlowForward = Forward;
  static final Path SlowForward2 = Forward2;
  static final Path ExtendLeft2 = ExtendLeft..scale(2,2);
  static final Path ExtendRight2 = ExtendLeft2..scale(1,-1);
  static final Path ExtendLeft4 = ExtendLeft..scale(4,4);
  static final Path ExtendRight4 = ExtendLeft4..scale(1,-1);
  static final Path PullLeft = ExtendLeft..changehands(Hands.RIGHT);
  static final Path PullRight = PullLeft..scale(1,-1);
  static final Path PassThru = ExtendLeft..scale(1,0.5);
  static final Path PullBy = PullLeft..scale(1,0.5);
  static final Path SwingLeft = RunLeft..changehands(Hands.GRIPLEFT);
  static final Path SwingRight = SwingLeft..scale(1,-1);
  static final Path CastLeft = SwingLeft + HingeLeft;
  static final Path CastRight = CastLeft..scale(1,-1);
  static final Path LeadLeft2 = LeadLeft..scale(2,2);
  static final Path LeadRight2 = LeadLeft2..scale(1,-1);
  static final Path LeadLeft3 = LeadLeft..scale(3,3);
  static final Path LeadRight3 = LeadLeft3..scale(1,-1);
  static final Path BeauWheel = BackRunRight..changehands(Hands.GRIPRIGHT);
  static final Path BelleWheel = Path([Movement.fromData(
      beats: 3, hands: Hands.GRIPLEFT, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: 2, x2: 0, y2: 2, cx3: 1.333, cx4: 1.333, cy4: 2, x4: 0, y4: 2
  )],'Belle Wheel');
  static final Path BeauReverseWheel = Path([Movement.fromData(
      beats: 3, hands: Hands.GRIPRIGHT, cx1: 1.333, cy1: 0, cx2: 1.333, cy2: -2, x2: 0, y2: -2, cx3: 1.333, cx4: 1.333, cy4: -2, x4: 0, y4: -2
  )],'Beau Reverse Wheel');
  static final Path BelleReverseWheel = BackRunLeft..changehands(Hands.GRIPLEFT);
  static final Path BeauCross = Path([Movement.fromData(
      beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 4, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4
  )],'Beau Cross');
  static final Path BelleCross = Path([Movement.fromData(
      beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: .8, cy2: 2, x2: 4, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4
  )],'Belle Cross');
  static final Map<String,Path> pathMap = {
    'Stand' : Stand,
    'Stand Alone' : StandAlone,
    'Stand Left' : StandLeft,
    'Stand Right' : StandRight,
    'FinalStand' : FinalStand,
    'Final Left' : FinalLeft,
    'Final Right' : FinalRight,
    'Forward' : Forward,
    'Back' : Back,
    'Run Left' : RunLeft,
    'Run Right' : RunRight,
    'U-Turn Left' : UmTurnLeft,
    'U-Turn Right' : UmTurnRight,
    'Flip Left' : FlipLeft,
    'Flip Right' : FlipRight,
    'Dodge Left' : DodgeLeft,
    'Dodge Right' : DodgeRight,
    'Extend Left' : ExtendLeft,
    'Extend Right' : ExtendRight,
    'Retreat Left' : RetreatLeft,
    'Retreat Right' : RetreatRight,
    'Quarter Left' : QuarterLeft,
    'Quarter Right' : QuarterRight,
    'Hinge Left' : HingeLeft,
    'Hinge Right' : HingeRight,
    'BackHinge Left' : BackHingeLeft,
    'BackHinge Right' : BackHingeRight,
    'HalfHinge Left' : HalfHingeLeft,
    'HalfHinge Right' : HalfHingeRight,
    'HalfBackHinge Left' : HalfBackHingeLeft,
    'HalfBackHinge Right' : HalfBackHingeRight,
    'BackRun Left' : BackRunLeft,
    'BackRun Right' : BackRunRight,
    'Fold Left' : FoldLeft,
    'Fold Right' : FoldRight,
    'Cross Fold Left' : CrossFoldLeft,
    'Cross Fold Right' : CrossFoldRight,
    'Lead Left' : LeadLeft,
    'Lead Left Passing' : LeadLeftPassing,
    'Lead Right Passing' : LeadRightPassing,
    'Lead Right' : LeadRight,
    'Wheel Thru Right' : WheelThruRight,
    'Wheel Thru Left' : WheelThruLeft,
    'Eighth Left' : EighthLeft,
    'Eighth Right' : EighthRight,
    '3/8 Left' : n38Left,
    '3/8 Right' : n38Right,
    'Lead Left 1/2' : LeadLeft12,
    'Lead Right 1/2' : LeadRight12,
    'Sashay Left' : SashayLeft,
    'Sashay Right' : SashayRight,
    'BackSashay Left' : BackSashayLeft,
    'BackSashay Right' : BackSashayRight,
    'Sxtnth Left' : SxtnthLeft,
    'Sxtnth Right' : SxtnthRight,
    'Cross Left Save' : CrossLeftSave,
    'Cross Left' : CrossLeft,
    'Cross Right' : CrossRight,
    'Counter Rotate Right 2 0' : CounterRotateRight20,
    'Counter Rotate Left 2 0' : CounterRotateLeft20,
    'Counter Rotate Left 0 2' : CounterRotateLeft02,
    'Counter Rotate Right 0 -2' : CounterRotateRight0m2,
    'Counter Rotate Right 0 -4' : CounterRotateRight0m4,
    'Counter Rotate Left 1 2' : CounterRotateLeft12,
    'Counter Rotate Left 2 4' : CounterRotateLeft24,
    'Counter Rotate Right 1 -2' : CounterRotateRight1m2,
    'Counter Rotate Right 0 2' : CounterRotateRight02,
    'Counter Rotate Left 0 -2' : CounterRotateLeft0m2,
    'Counter Rotate Right 1 2' : CounterRotateRight12,
    'Counter Rotate Left 1 -2' : CounterRotateLeft1m2,
    'Counter Rotate Left -2 0' : CounterRotateLeftm20,
    'Counter Rotate Right -2 0' : CounterRotateRightm20,
    'Counter Rotate Right 3 1' : CounterRotateRight31,
    'Counter Rotate Left 3 -1' : CounterRotateLeft3m1,
    'Counter Rotate Right 3 -1' : CounterRotateRight3m1,
    'Counter Rotate Left 3 1' : CounterRotateLeft31,
    'Counter Rotate Right 0 3' : CounterRotateRight03,
    'Counter Rotate Left 0 -3' : CounterRotateLeft0m3,
    'Counter Rotate Right 5 1' : CounterRotateRight51,
    'Counter Rotate Left 5 -1' : CounterRotateLeft5m1,
    'Counter Rotate Right 5 -1' : CounterRotateRight5m1,
    'Counter Rotate Right 4.5 -1.5' : CounterRotateRight4p5m1p5,
    'Counter Rotate Right 1.5 -4.5' : CounterRotateRight1p5m4p5,
    'Counter Rotate Left -0.5 2.5' : CounterRotateLeftm0p52p5,
    'Counter Rotate Right -0.5 -2.5' : CounterRotateRightm0p5m2p5,
    'Counter Rotate Left 2.5 -0.5' : CounterRotateLeft2p5m0p5,
    'Counter Rotate Right 2.5 0.5' : CounterRotateRight2p50p5,
    'Counter Rotate Right 1.5 3.5' : CounterRotateRight1p53p5,
    'Counter Rotate Right 3.5 1.5' : CounterRotateRight3p51p5,
    'Counter Rotate Left 5 1' : CounterRotateLeft51,
    'Counter Rotate Right 1 -5' : CounterRotateRight1m5,
    'Counter Rotate Left 1 5' : CounterRotateLeft15,
    'Counter Rotate Left -1 3' : CounterRotateLeftm13,
    'Counter Rotate Right -1 -3' : CounterRotateRightm1m3,
    'Counter Rotate Right 4 2' : CounterRotateRight42,
    'Counter Rotate Right 2 4' : CounterRotateRight24,
    'Counter Rotate Left 4 -2' : CounterRotateLeft4m2,
    'Counter Rotate Right -2 -4' : CounterRotateRightm2m4,
    'Counter Rotate Left -2 4' : CounterRotateLeftm24,
    'Counter Rotate Right 4 -2' : CounterRotateRight4m2,
    'Counter Rotate Left 4 2' : CounterRotateLeft42,
    'Counter Rotate Right 2 -4' : CounterRotateRight2m4,
    'Counter Rotate Left 1 1' : CounterRotateLeft11,
    'Counter Rotate Left 2 2' : CounterRotateLeft22,
    'Counter Rotate Left 1.414 1.414' : CounterRotateLeft1p4141p414,
    'cl' : cl,
    'cr' : cr,
    'incircle2' : incircle2,
    'incircle3' : incircle3,
    'ssqtr' : ssqtr,
    'Pivot forward left' : Pivotforwardleft,
    'Pivot forward right' : Pivotforwardright,
    'Pivot backward left' : Pivotbackwardleft,
    'Pivot backward right' : Pivotbackwardright,
    'Sxtnth' : Sxtnth,
    'H16th' : H16th,
    'Circle Left Half' : CircleLeftHalf,
    'Circle Left Quarter' : CircleLeftQuarter,
    'Circle Right Quarter' : CircleRightQuarter,
    'Forward .5' : Forwardp5,
    'Forward 1.5' : Forward1p5,
    'Forward 2' : Forward2,
    'Forward 3' : Forward3,
    'Forward 4' : Forward4,
    'Forward 5' : Forward5,
    'Forward 6' : Forward6,
    'Back 2' : Back2,
    'Slow Forward' : SlowForward,
    'Slow Forward 2' : SlowForward2,
    'Extend Left 2' : ExtendLeft2,
    'Extend Right 2' : ExtendRight2,
    'Extend Left 4' : ExtendLeft4,
    'Extend Right 4' : ExtendRight4,
    'Pull Left' : PullLeft,
    'Pull Right' : PullRight,
    'Pass Thru' : PassThru,
    'Pull By' : PullBy,
    'Swing Left' : SwingLeft,
    'Swing Right' : SwingRight,
    'Cast Left' : CastLeft,
    'Cast Right' : CastRight,
    'Lead Left 2' : LeadLeft2,
    'Lead Right 2' : LeadRight2,
    'Lead Left 3' : LeadLeft3,
    'Lead Right 3' : LeadRight3,
    'Beau Wheel' : BeauWheel,
    'Belle Wheel' : BelleWheel,
    'Beau Reverse Wheel' : BeauReverseWheel,
    'Belle Reverse Wheel' : BelleReverseWheel,
    'Beau Cross' : BeauCross,
    'Belle Cross' : BelleCross,
  };
}
