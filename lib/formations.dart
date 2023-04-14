import 'dancer_model.dart';
import 'formation.dart';

class Formations {
  static final Formation FacingCouples = Formation('Facing Couples', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]);

  static final Formation FacingCouplesCompact = Formation('Facing Couples Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
  ]);

  static final Formation FacingCouplesClose = Formation('Facing Couples Close', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation FacingCouplesFar = Formation('Facing Couples Far', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
  ]);

  static final Formation CouplesFacingOut = Formation('Couples Facing Out', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
  ]);

  static final Formation CouplesFacingOutCompact = Formation('Couples Facing Out Compact', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:180),
  ]);

  static final Formation CouplesFacingOutFar = Formation('Couples Facing Out Far', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
  ]);

  static final Formation CouplesFacingOutClose = Formation('Couples Facing Out Close', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]);

  static final Formation TwomFacedLineRH = Formation('Two-Faced Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation CompactTwomFacedLineRH = Formation('Compact Two-Faced Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
  ]);

  static final Formation TwomFacedLineLH = Formation('Two-Faced Line LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]);

  static final Formation CompactTwomFacedLineLH = Formation('Compact Two-Faced Line LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
  ]);

  static final Formation BoxRH = Formation('Box RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
  ]);

  static final Formation BoxRHCompact = Formation('Box RH Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
  ]);

  static final Formation BoxRHClose = Formation('Box RH Close', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation BoxRHBoysLead = Formation('Box RH Boys Lead', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
  ]);

  static final Formation BoxLH = Formation('Box LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]);

  static final Formation BoxLHCompact = Formation('Box LH Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
  ]);

  static final Formation BoxLHClose = Formation('Box LH Close', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation BoxLHGirlsLead = Formation('Box LH Girls Lead', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
  ]);

  static final Formation WaveRH = Formation('Wave RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation CompactWaveRH = Formation('Compact Wave RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:180),
  ]);

  static final Formation WaveRHBoysCenter = Formation('Wave RH Boys Center', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]);

  static final Formation WaveLH = Formation('Wave LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation CompactWaveLH = Formation('Compact Wave LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-0.5,angle:180),
  ]);

  static final Formation WaveLHBoysCenter = Formation('Wave LH Boys Center', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]);

  static final Formation WaveRHGBBG = Formation('Wave RH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
  ]);

  static final Formation WaveLHGBBG = Formation('Wave LH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
  ]);

  static final Formation DiamondRH = Formation('Diamond RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]);

  static final Formation DiamondRHGirlPoints = Formation('Diamond RH Girl Points', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]);

  static final Formation DiamondLH = Formation('Diamond LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]);

  static final Formation DiamondLHBoysCenter = Formation('Diamond LH Boys Center', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]);

  static final Formation DiamondFacing = Formation('Diamond Facing', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]);

  static final Formation DiamondFacingRH = Formation('Diamond Facing RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]);

  static final Formation DiamondCompact = Formation('Diamond Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]);

  static final Formation SingleDoublePassThru = Formation('Single Double Pass Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:0),
  ]);

  static final Formation SingleDoublePassThruClose = Formation('Single Double Pass Thru Close', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-.5,y:0,angle:0),
  ]);

  static final Formation SingleEightChainThru = Formation('Single Eight Chain Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:180),
  ]);

  static final Formation SingleQuarterTag = Formation('Single Quarter Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation SingleLeftQuarterTag = Formation('Single Left Quarter Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation Single_34Tag = Formation('Single 3/4 Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation SingleLeft_34Tag = Formation('Single Left 3/4 Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation TandemGirlsLead = Formation('Tandem Girls Lead', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:0),
  ]);

  static final Formation SquareRH = Formation('Square RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
  ]);

  static final Formation SquareLH = Formation('Square LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation SquareFacingOutLH = Formation('Square Facing Out LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
  ]);

  static final Formation SquareFacingOutRH = Formation('Square Facing Out RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation StarRH = Formation('Star RH', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation StarLH = Formation('Star LH', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation StarFacing = Formation('Star Facing', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation Block = Formation('Block', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-2,angle:0),
  ]);

  static final Formation StaticSquare = Formation('Static Square', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]);

  static final Formation SquaredSet = Formation('Squared Set', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]);

  static final Formation StaticFacingOut = Formation('Static Facing Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
  ]);

  static final Formation StaticMiniWavesRH = Formation('Static MiniWaves RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
  ]);

  static final Formation StaticMiniWavesLH = Formation('Static MiniWaves LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]);

  static final Formation StaticBackToBack = Formation('Static BackToBack', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:4,angle:90),
  ]);

  static final Formation StaticFacing = Formation('Static Facing', [
        DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:4,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2,angle:90),
  ]);

  static final Formation StaticGirlsLead = Formation('Static Girls Lead', [
        DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:0,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:4,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2,angle:270),
  ]);

  static final Formation SingleFilePromenade = Formation('Single File Promenade', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
  ]);

  static final Formation SingleFileReversePromenade = Formation('Single File Reverse Promenade', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
  ]);

  static final Formation Promenade = Formation('Promenade', [
        DancerModel.fromData(gender:Gender.BOY,x:1.414,y:1.414,angle:135),
        DancerModel.fromData(gender:Gender.GIRL,x:2.121,y:2.121,angle:135),
        DancerModel.fromData(gender:Gender.BOY,x:1.414,y:-1.414,angle:45),
        DancerModel.fromData(gender:Gender.GIRL,x:2.121,y:-2.121,angle:45),
  ]);

  static final Formation Promenade_2 = Formation('Promenade 2', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]);

  static final Formation StarPromenade = Formation('Star Promenade', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]);

  static final Formation ReverseStarPromenade = Formation('Reverse Star Promenade', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation StarsRH = Formation('Stars RH', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
  ]);

  static final Formation StarsLH = Formation('Stars LH', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
  ]);

  static final Formation NormalLines = Formation('Normal Lines', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation NormalLinesCompact = Formation('Normal Lines Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-3,angle:0),
  ]);

  static final Formation SashayedLines = Formation('Sashayed Lines', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]);

  static final Formation LinesFacingOut = Formation('Lines Facing Out', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation LinesFacingOutCompact = Formation('Lines Facing Out Compact', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]);

  static final Formation ZRHGBBG = Formation('Z RH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2.5,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation RightmHandZs = Formation('Right-Hand Zs', [
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation LeftmHandZs = Formation('Left-Hand Zs', [
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation OceanWaves = Formation('Ocean Waves', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation OceanWavesRHBGGB = Formation('Ocean Waves RH BGGB', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation OceanWavesRHBGGBCompact = Formation('Ocean Waves RH BGGB Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]);

  static final Formation OceanWavesLHBGGB = Formation('Ocean Waves LH BGGB', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]);

  static final Formation OceanWavesRHGBBG = Formation('Ocean Waves RH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation OceanWavesLHGBBG = Formation('Ocean Waves LH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation OceanWavesRHBGBG = Formation('Ocean Waves RH BGBG', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation OceanWavesLHBGBG = Formation('Ocean Waves LH BGBG', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation OceanWavesRHGBGB = Formation('Ocean Waves RH GBGB', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation OceanWavesLHGBGB = Formation('Ocean Waves LH GBGB', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]);

  static final Formation Circle = Formation('Circle', [
        DancerModel.fromData(gender:Gender.BOY,x:-2.414,y:1,angle:-22.5),
        DancerModel.fromData(gender:Gender.GIRL,x:-2.414,y:-1,angle:22.5),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2.414,angle:247.5),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2.414,angle:292.5),
  ]);

  static final Formation AlamoWave = Formation('Alamo Wave', [
        DancerModel.fromData(gender:Gender.BOY,x:-2.414,y:1,angle:-22.5),
        DancerModel.fromData(gender:Gender.GIRL,x:-2.414,y:-1,angle:202.5),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2.414,angle:247.5),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2.414,angle:112.5),
  ]);

  static final Formation TwomFacedLines = Formation('Two-Faced Lines', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation TwomFacedLinesRH = Formation('Two-Faced Lines RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]);

  static final Formation TwomFacedLinesRHCompact = Formation('Two-Faced Lines RH Compact', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]);

  static final Formation TwomFacedLinesLH = Formation('Two-Faced Lines LH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation TharLHBoys = Formation('Thar LH Boys', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]);

  static final Formation TharLHGirls = Formation('Thar LH Girls', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
  ]);

  static final Formation TharRHBoys = Formation('Thar RH Boys', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]);

  static final Formation TharRHGirls = Formation('Thar RH Girls', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
  ]);

  static final Formation Diamonds = Formation('Diamonds', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]);

  static final Formation DiamondsRHGirlPoints = Formation('Diamonds RH Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]);

  static final Formation DiamondsLHGirlPoints = Formation('Diamonds LH Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]);

  static final Formation DiamondsFacingGirlPoints = Formation('Diamonds Facing Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]);

  static final Formation DiamondsFacingLHGirlPoints = Formation('Diamonds Facing LH Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]);

  static final Formation DiamondsRHPTPGirlPoints = Formation('Diamonds RH PTP Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]);

  static final Formation DiamondsLHPTPGirlPoints = Formation('Diamonds LH PTP Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]);

  static final Formation DiamondsFacingPTP = Formation('Diamonds Facing PTP', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]);

  static final Formation DiamondsFacingLHPTP = Formation('Diamonds Facing LH PTP', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]);

  static final Formation Diamonds_3and_1GirlPoints = Formation('Diamonds 3 and 1 Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]);

  static final Formation Diamonds_3and_1 = Formation('Diamonds 3 and 1', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]);

  static final Formation InterlockedDiamondsRHGirlPoints = Formation('Interlocked Diamonds RH Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]);

  static final Formation InterlockedDiamondsLHGirlPoints = Formation('Interlocked Diamonds LH Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]);

  static final Formation InterlockedDiamondsRHPTPGirlPoints = Formation('Interlocked Diamonds RH PTP Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]);

  static final Formation InterlockedDiamondsLHPTPGirlPoints = Formation('Interlocked Diamonds LH PTP Girl Points', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]);

  static final Formation OnceRemovedDiamondsTandemCenters = Formation('Once Removed Diamonds Tandem Centers', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
  ]);

  static final Formation DiamondBetweenKouples = Formation('Diamond Between Kouples', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3.0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3.0,y:-1,angle:0),
  ]);

  static final Formation InvertedLinesEndsFacingOut = Formation('Inverted Lines Ends Facing Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation InvertedLinesEndsFacingIn = Formation('Inverted Lines Ends Facing In', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation n3and_1lines1 = Formation('3 and 1 lines #1', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation n3and_1lines2 = Formation('3 and 1 lines #2', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation n3and_1lines3 = Formation('3 and 1 lines #3', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation n3and_1lines4 = Formation('3 and 1 lines #4', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation n3and_1lines5 = Formation('3 and 1 lines #5', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation n3and_1lines6 = Formation('3 and 1 lines #6', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation n3and_1lines7 = Formation('3 and 1 lines #7', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]);

  static final Formation n3and_1lines8 = Formation('3 and 1 lines #8', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]);

  static final Formation ConcentricDiamondsRH = Formation('Concentric Diamonds RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:4,y:0,angle:270),
  ]);

  static final Formation ConcentricDiamondsMixed = Formation('Concentric Diamonds Mixed', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:4,y:0,angle:270),
  ]);

  static final Formation QuarterTag = Formation('Quarter Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation QuarterTagLH = Formation('Quarter Tag LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation n34Tag = Formation('3/4 Tag', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation n34TagLH = Formation('3/4 Tag LH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation QuarterLinesRH = Formation('Quarter Lines RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]);

  static final Formation QuarterLinesLH = Formation('Quarter Lines LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]);

  static final Formation n34LinesRH = Formation('3/4 Lines RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]);

  static final Formation n34LinesLH = Formation('3/4 Lines LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]);

  static final Formation MixedQuarterTag1 = Formation('Mixed Quarter Tag #1', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation MixedQuarterTag2 = Formation('Mixed Quarter Tag #2', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation MixedQuarterTag3 = Formation('Mixed Quarter Tag #3', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation MixedQuarterTag4 = Formation('Mixed Quarter Tag #4', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation MixedQuarterTag5 = Formation('Mixed Quarter Tag #5', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation MixedQuarterTag6 = Formation('Mixed Quarter Tag #6', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation MixedQuarterTag7 = Formation('Mixed Quarter Tag #7', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]);

  static final Formation MixedQuarterTag8 = Formation('Mixed Quarter Tag #8', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation QuarterZRH = Formation('Quarter Z RH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]);

  static final Formation QuarterZLH = Formation('Quarter Z LH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
  ]);

  static final Formation QuarterH = Formation('Quarter H', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
  ]);

  static final Formation DoublePassThru = Formation('Double Pass Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation DoublePassThruforBlocks = Formation('Double Pass Thru for Blocks', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
  ]);

  static final Formation CompletedDoublePassThru = Formation('Completed Double Pass Thru', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]);

  static final Formation EightChainThru = Formation('Eight Chain Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]);

  static final Formation ZeroBox = Formation('Zero Box', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
  ]);

  static final Formation PassThru = Formation('Pass Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]);

  static final Formation TradeBy = Formation('Trade By', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]);

  static final Formation Columns = Formation('Columns', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]);

  static final Formation ColumnRHGBGB = Formation('Column RH GBGB', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]);

  static final Formation ColumnLHGBGB = Formation('Column LH GBGB', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]);

  static final Formation MagicColumnRH = Formation('Magic Column RH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
  ]);

  static final Formation MagicColumnLH = Formation('Magic Column LH', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]);

  static final Formation MixedColumnsRHEndsIn = Formation('Mixed Columns RH Ends In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation MixedColumnsLHEndsIn = Formation('Mixed Columns LH Ends In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation MixedColumnsRHEndsOut = Formation('Mixed Columns RH Ends Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation MixedColumnsLHEndsOut = Formation('Mixed Columns LH Ends Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation MixedColumnsRHCentersIn = Formation('Mixed Columns RH Centers In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation MixedColumnsLHCentersIn = Formation('Mixed Columns LH Centers In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation MixedColumnsRHCentersOut = Formation('Mixed Columns RH Centers Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation MixedColumnsLHCentersOut = Formation('Mixed Columns LH Centers Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation TwomFacedTidalLineRH = Formation('Two-Faced Tidal Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:180),
  ]);

  static final Formation TwomFacedTidalLineLH = Formation('Two-Faced Tidal Line LH', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
  ]);

  static final Formation TidalInvertedLineRH = Formation('Tidal Inverted Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation TidalInvertedLineLH = Formation('Tidal Inverted Line LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalLineRH = Formation('Tidal Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation TidalLineLH = Formation('Tidal Line LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
  ]);

  static final Formation TidalWave = Formation('Tidal Wave', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalWaveRHBGGB = Formation('Tidal Wave RH BGGB', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalWaveRHGBBG = Formation('Tidal Wave RH GBBG', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalWaveRHBGBG = Formation('Tidal Wave RH BGBG', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalWaveLHBGGB = Formation('Tidal Wave LH BGGB', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:180),
  ]);

  static final Formation InvertedTidalLineRH = Formation('Inverted Tidal Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:180),
  ]);

  static final Formation InvertedTidalLineLH = Formation('Inverted Tidal Line LH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-.5,angle:0),
  ]);

  static final Formation Tidal_3and_1Line1 = Formation('Tidal 3 and 1 Line #1', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation Tidal_3and_1Line2 = Formation('Tidal 3 and 1 Line #2', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation Tidal_3and_1Line3 = Formation('Tidal 3 and 1 Line #3', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation Tidal_3and_1Line4 = Formation('Tidal 3 and 1 Line #4', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation Tidal_3and_1Line5 = Formation('Tidal 3 and 1 Line #5', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]);

  static final Formation Tidal_3and_1Line6 = Formation('Tidal 3 and 1 Line #6', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation Tidal_3and_1Line7 = Formation('Tidal 3 and 1 Line #7', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation Tidal_3and_1Line8 = Formation('Tidal 3 and 1 Line #8', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]);

  static final Formation TidalWaveof_6 = Formation('Tidal Wave of 6', [
        DancerModel.fromData(gender:Gender.BOY,x:2.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]);

  static final Formation CompactWaveof_6 = Formation('Compact Wave of 6', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:180),
  ]);

  static final Formation ImBeam = Formation('I-Beam', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]);

  static final Formation HmBeam = Formation('H-Beam', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]);

  static final Formation ImColumn = Formation('I-Column', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:270),
  ]);

  static final Formation MisshapenImBeam = Formation('Misshapen I-Beam', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]);

  static final Formation XmBeam = Formation('X-Beam', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.67,y:0,angle:0),
  ]);

  static final Formation MisshapenXmBeam = Formation('Misshapen X-Beam', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:0),
  ]);

  static final Formation HourglassRHBP = Formation('Hourglass RH BP', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation HourglassRHGP = Formation('Hourglass RH GP', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
  ]);

  static final Formation HourglassLHBP = Formation('Hourglass LH BP', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation HourglassFacingLHBox = Formation('Hourglass Facing LH Box', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);

  static final Formation HourglassFacingRHBox = Formation('Hourglass Facing RH Box', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]);

  static final Formation GalaxyRHGP = Formation('Galaxy RH GP', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
  ]);

  static final Formation GalaxyLHGP = Formation('Galaxy LH GP', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
  ]);

  static final Formation GalaxyFacingRHBox = Formation('Galaxy Facing RH Box', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
  ]);

  static final Formation GalaxyFacingLHBox = Formation('Galaxy Facing LH Box', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
  ]);

  static final Formation Blocks = Formation('Blocks', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation FacingBlocksRight = Formation('Facing Blocks Right', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation FacingBlocksLeft = Formation('Facing Blocks Left', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation Galaxy_5 = Formation('Galaxy 5', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
  ]);

  static final Formation Galaxy_6 = Formation('Galaxy 6', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
  ]);

  static final Formation Galaxy_7 = Formation('Galaxy 7', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
  ]);

  static final Formation Galaxy_8 = Formation('Galaxy 8', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
  ]);

  static final Formation BlocksFacingOut = Formation('Blocks Facing Out', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]);

  static final Formation BlocksRH = Formation('Blocks RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation ButterflyRH = Formation('Butterfly RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation ButterflyLH = Formation('Butterfly LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation ButterflyIn = Formation('Butterfly In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation ButterflyOut = Formation('Butterfly Out', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]);

  static final Formation ButterflyChainThru = Formation('Butterfly Chain Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]);

  static final Formation ButterflyTradeBy = Formation('Butterfly Trade By', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation ORH = Formation('O RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]);

  static final Formation OLH = Formation('O LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation OIn = Formation('O In', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation OOut = Formation('O Out', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]);

  static final Formation OEightChainThru = Formation('O Eight Chain Thru', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
  ]);

  static final Formation OTradeBy = Formation('O Trade By', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation SausageRH = Formation('Sausage RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-4,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]);

  static final Formation TmBoneDLDL = Formation('T-Bone DLDL', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]);

  static final Formation TmBoneDRDR = Formation('T-Bone DRDR', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
  ]);

  static final Formation TmBoneURUR = Formation('T-Bone URUR', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
  ]);

  static final Formation TmBoneRDRD = Formation('T-Bone RDRD', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
  ]);

  static final Formation TmBoneURRD = Formation('T-Bone URRD', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]);

  static final Formation TmBoneULLD = Formation('T-Bone ULLD', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]);

  static final Formation TmBoneDRRU = Formation('T-Bone DRRU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneULRU = Formation('T-Bone ULRU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneURLU = Formation('T-Bone URLU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneDLLU = Formation('T-Bone DLLU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneDRLD = Formation('T-Bone DRLD', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]);

  static final Formation TmBoneDLRD = Formation('T-Bone DLRD', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]);

  static final Formation TmBoneLUUR = Formation('T-Bone LUUR', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation TmBoneRUUL = Formation('T-Bone RUUL', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]);

  static final Formation TmBoneLDDR = Formation('T-Bone LDDR', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation TmBoneRDDL = Formation('T-Bone RDDL', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]);

  static final Formation TmBoneLULU = Formation('T-Bone LULU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneULUL = Formation('T-Bone ULUL', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]);

  static final Formation TmBoneLDLD = Formation('T-Bone LDLD', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]);

  static final Formation TmBoneURDR = Formation('T-Bone URDR', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
  ]);

  static final Formation TmBoneRLUU = Formation('T-Bone RLUU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneUURL = Formation('T-Bone UURL', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]);

  static final Formation TmBoneLRDU = Formation('T-Bone LRDU', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]);

  static final Formation TmBoneUDLR = Formation('T-Bone UDLR', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
  ]);

  static final Formation TmBoneUDLL = Formation('T-Bone UDLL', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]);

  static final Formation TmBoneCouples_1 = Formation('T-Bone Couples 1', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]);

  static final Formation TmBoneCouples_2 = Formation('T-Bone Couples 2', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
  ]);

  static final Formation PhantomFormationIn = Formation('Phantom Formation In', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:0),
  ]);

  static final Formation PhantomFormationRH = Formation('Phantom Formation RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:180),
  ]);

  static final Formation PhantomFormationLH = Formation('Phantom Formation LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:0),
  ]);

  static final Formation PhantomFormationTwomFaced = Formation('Phantom Formation Two-Faced', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:180),
  ]);

  static final Formation PhantomLinesIn = Formation('Phantom Lines In', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:5,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:-5,angle:180),
  ]);

  static final Formation PhantomLinesOut = Formation('Phantom Lines Out', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-5,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:5,angle:180),
  ]);

  static final Formation PhantomWavesRH = Formation('Phantom Waves RH', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:5,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:-5,angle:180),
  ]);

  static final Formation PhantomWavesLH = Formation('Phantom Waves LH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
  ]);

  static final Formation PhantomTwomFacedRH = Formation('Phantom Two-Faced RH', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]);

  static final Formation TidalLineGirlsDisconnected = Formation('Tidal Line Girls Disconnected', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
  ]);

  static final Formation PhantomSnapFormation_1 = Formation('Phantom Snap Formation 1', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
  ]);

  static final Formation PhantomSnapFormation_2 = Formation('Phantom Snap Formation 2', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:90),
  ]);

  static final Formation TripleBoxes = Formation('Triple Boxes', [
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:5,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:-5,angle:0),
  ]);

  static final Formation TripleBoxesClose = Formation('Triple Boxes Close', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:5,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-5,angle:90),
  ]);

  static final Formation TripleLines = Formation('Triple Lines', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]);

  static final Formation TripleColumns = Formation('Triple Columns', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]);

  static final Formation SiameseBox_1 = Formation('Siamese Box 1', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-2,angle:0),
  ]);

  static final Formation SiameseBox_2 = Formation('Siamese Box 2', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:0),
  ]);

  static final Formation SiameseBox_3 = Formation('Siamese Box 3', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:0),
  ]);

  static final Formation SiameseWave = Formation('Siamese Wave', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
  ]);

  static final Formation SiameseWave_2 = Formation('Siamese Wave 2', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:0.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.0,y:3.0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.0,y:3.0,angle:0),
  ]);

  static final Formation Siamese_2mFacedLine = Formation('Siamese 2-Faced Line', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
  ]);

  static final Formation Siamese_2mFacedLine_2 = Formation('Siamese 2-Faced Line 2', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:0),
  ]);


static final Map<String,Formation> formationIndex = {
    'Facing Couples' : FacingCouples,
    'Facing Couples Compact' : FacingCouplesCompact,
    'Facing Couples Close' : FacingCouplesClose,
    'Facing Couples Far' : FacingCouplesFar,
    'Couples Facing Out' : CouplesFacingOut,
    'Couples Facing Out Compact' : CouplesFacingOutCompact,
    'Couples Facing Out Far' : CouplesFacingOutFar,
    'Couples Facing Out Close' : CouplesFacingOutClose,
    'Two-Faced Line RH' : TwomFacedLineRH,
    'Compact Two-Faced Line RH' : CompactTwomFacedLineRH,
    'Two-Faced Line LH' : TwomFacedLineLH,
    'Compact Two-Faced Line LH' : CompactTwomFacedLineLH,
    'Box RH' : BoxRH,
    'Box RH Compact' : BoxRHCompact,
    'Box RH Close' : BoxRHClose,
    'Box RH Boys Lead' : BoxRHBoysLead,
    'Box LH' : BoxLH,
    'Box LH Compact' : BoxLHCompact,
    'Box LH Close' : BoxLHClose,
    'Box LH Girls Lead' : BoxLHGirlsLead,
    'Wave RH' : WaveRH,
    'Compact Wave RH' : CompactWaveRH,
    'Wave RH Boys Center' : WaveRHBoysCenter,
    'Wave LH' : WaveLH,
    'Compact Wave LH' : CompactWaveLH,
    'Wave LH Boys Center' : WaveLHBoysCenter,
    'Wave RH GBBG' : WaveRHGBBG,
    'Wave LH GBBG' : WaveLHGBBG,
    'Diamond RH' : DiamondRH,
    'Diamond RH Girl Points' : DiamondRHGirlPoints,
    'Diamond LH' : DiamondLH,
    'Diamond LH Boys Center' : DiamondLHBoysCenter,
    'Diamond Facing' : DiamondFacing,
    'Diamond Facing RH' : DiamondFacingRH,
    'Diamond Compact' : DiamondCompact,
    'Single Double Pass Thru' : SingleDoublePassThru,
    'Single Double Pass Thru Close' : SingleDoublePassThruClose,
    'Single Eight Chain Thru' : SingleEightChainThru,
    'Single Quarter Tag' : SingleQuarterTag,
    'Single Left Quarter Tag' : SingleLeftQuarterTag,
    'Single 3/4 Tag' : Single_34Tag,
    'Single Left 3/4 Tag' : SingleLeft_34Tag,
    'Tandem Girls Lead' : TandemGirlsLead,
    'Square RH' : SquareRH,
    'Square LH' : SquareLH,
    'Square Facing Out LH' : SquareFacingOutLH,
    'Square Facing Out RH' : SquareFacingOutRH,
    'Star RH' : StarRH,
    'Star LH' : StarLH,
    'Star Facing' : StarFacing,
    'Block' : Block,
    'Static Square' : StaticSquare,
    'Squared Set' : SquaredSet,
    'Static Facing Out' : StaticFacingOut,
    'Static MiniWaves RH' : StaticMiniWavesRH,
    'Static MiniWaves LH' : StaticMiniWavesLH,
    'Static BackToBack' : StaticBackToBack,
    'Static Facing' : StaticFacing,
    'Static Girls Lead' : StaticGirlsLead,
    'Single File Promenade' : SingleFilePromenade,
    'Single File Reverse Promenade' : SingleFileReversePromenade,
    'Promenade' : Promenade,
    'Promenade 2' : Promenade_2,
    'Star Promenade' : StarPromenade,
    'Reverse Star Promenade' : ReverseStarPromenade,
    'Stars RH' : StarsRH,
    'Stars LH' : StarsLH,
    'Normal Lines' : NormalLines,
    'Normal Lines Compact' : NormalLinesCompact,
    'Sashayed Lines' : SashayedLines,
    'Lines Facing Out' : LinesFacingOut,
    'Lines Facing Out Compact' : LinesFacingOutCompact,
    'Z RH GBBG' : ZRHGBBG,
    'Right-Hand Zs' : RightmHandZs,
    'Left-Hand Zs' : LeftmHandZs,
    'Ocean Waves' : OceanWaves,
    'Ocean Waves RH BGGB' : OceanWavesRHBGGB,
    'Ocean Waves RH BGGB Compact' : OceanWavesRHBGGBCompact,
    'Ocean Waves LH BGGB' : OceanWavesLHBGGB,
    'Ocean Waves RH GBBG' : OceanWavesRHGBBG,
    'Ocean Waves LH GBBG' : OceanWavesLHGBBG,
    'Ocean Waves RH BGBG' : OceanWavesRHBGBG,
    'Ocean Waves LH BGBG' : OceanWavesLHBGBG,
    'Ocean Waves RH GBGB' : OceanWavesRHGBGB,
    'Ocean Waves LH GBGB' : OceanWavesLHGBGB,
    'Circle' : Circle,
    'Alamo Wave' : AlamoWave,
    'Two-Faced Lines' : TwomFacedLines,
    'Two-Faced Lines RH' : TwomFacedLinesRH,
    'Two-Faced Lines RH Compact' : TwomFacedLinesRHCompact,
    'Two-Faced Lines LH' : TwomFacedLinesLH,
    'Thar LH Boys' : TharLHBoys,
    'Thar LH Girls' : TharLHGirls,
    'Thar RH Boys' : TharRHBoys,
    'Thar RH Girls' : TharRHGirls,
    'Diamonds' : Diamonds,
    'Diamonds RH Girl Points' : DiamondsRHGirlPoints,
    'Diamonds LH Girl Points' : DiamondsLHGirlPoints,
    'Diamonds Facing Girl Points' : DiamondsFacingGirlPoints,
    'Diamonds Facing LH Girl Points' : DiamondsFacingLHGirlPoints,
    'Diamonds RH PTP Girl Points' : DiamondsRHPTPGirlPoints,
    'Diamonds LH PTP Girl Points' : DiamondsLHPTPGirlPoints,
    'Diamonds Facing PTP' : DiamondsFacingPTP,
    'Diamonds Facing LH PTP' : DiamondsFacingLHPTP,
    'Diamonds 3 and 1 Girl Points' : Diamonds_3and_1GirlPoints,
    'Diamonds 3 and 1' : Diamonds_3and_1,
    'Interlocked Diamonds RH Girl Points' : InterlockedDiamondsRHGirlPoints,
    'Interlocked Diamonds LH Girl Points' : InterlockedDiamondsLHGirlPoints,
    'Interlocked Diamonds RH PTP Girl Points' : InterlockedDiamondsRHPTPGirlPoints,
    'Interlocked Diamonds LH PTP Girl Points' : InterlockedDiamondsLHPTPGirlPoints,
    'Once Removed Diamonds Tandem Centers' : OnceRemovedDiamondsTandemCenters,
    'Diamond Between Kouples' : DiamondBetweenKouples,
    'Inverted Lines Ends Facing Out' : InvertedLinesEndsFacingOut,
    'Inverted Lines Ends Facing In' : InvertedLinesEndsFacingIn,
    '3 and 1 lines #1' : n3and_1lines1,
    '3 and 1 lines #2' : n3and_1lines2,
    '3 and 1 lines #3' : n3and_1lines3,
    '3 and 1 lines #4' : n3and_1lines4,
    '3 and 1 lines #5' : n3and_1lines5,
    '3 and 1 lines #6' : n3and_1lines6,
    '3 and 1 lines #7' : n3and_1lines7,
    '3 and 1 lines #8' : n3and_1lines8,
    'Concentric Diamonds RH' : ConcentricDiamondsRH,
    'Concentric Diamonds Mixed' : ConcentricDiamondsMixed,
    'Quarter Tag' : QuarterTag,
    'Quarter Tag LH' : QuarterTagLH,
    '3/4 Tag' : n34Tag,
    '3/4 Tag LH' : n34TagLH,
    'Quarter Lines RH' : QuarterLinesRH,
    'Quarter Lines LH' : QuarterLinesLH,
    '3/4 Lines RH' : n34LinesRH,
    '3/4 Lines LH' : n34LinesLH,
    'Mixed Quarter Tag #1' : MixedQuarterTag1,
    'Mixed Quarter Tag #2' : MixedQuarterTag2,
    'Mixed Quarter Tag #3' : MixedQuarterTag3,
    'Mixed Quarter Tag #4' : MixedQuarterTag4,
    'Mixed Quarter Tag #5' : MixedQuarterTag5,
    'Mixed Quarter Tag #6' : MixedQuarterTag6,
    'Mixed Quarter Tag #7' : MixedQuarterTag7,
    'Mixed Quarter Tag #8' : MixedQuarterTag8,
    'Quarter Z RH' : QuarterZRH,
    'Quarter Z LH' : QuarterZLH,
    'Quarter H' : QuarterH,
    'Double Pass Thru' : DoublePassThru,
    'Double Pass Thru for Blocks' : DoublePassThruforBlocks,
    'Completed Double Pass Thru' : CompletedDoublePassThru,
    'Eight Chain Thru' : EightChainThru,
    'Zero Box' : ZeroBox,
    'Pass Thru' : PassThru,
    'Trade By' : TradeBy,
    'Columns' : Columns,
    'Column RH GBGB' : ColumnRHGBGB,
    'Column LH GBGB' : ColumnLHGBGB,
    'Magic Column RH' : MagicColumnRH,
    'Magic Column LH' : MagicColumnLH,
    'Mixed Columns RH Ends In' : MixedColumnsRHEndsIn,
    'Mixed Columns LH Ends In' : MixedColumnsLHEndsIn,
    'Mixed Columns RH Ends Out' : MixedColumnsRHEndsOut,
    'Mixed Columns LH Ends Out' : MixedColumnsLHEndsOut,
    'Mixed Columns RH Centers In' : MixedColumnsRHCentersIn,
    'Mixed Columns LH Centers In' : MixedColumnsLHCentersIn,
    'Mixed Columns RH Centers Out' : MixedColumnsRHCentersOut,
    'Mixed Columns LH Centers Out' : MixedColumnsLHCentersOut,
    'Two-Faced Tidal Line RH' : TwomFacedTidalLineRH,
    'Two-Faced Tidal Line LH' : TwomFacedTidalLineLH,
    'Tidal Inverted Line RH' : TidalInvertedLineRH,
    'Tidal Inverted Line LH' : TidalInvertedLineLH,
    'Tidal Line RH' : TidalLineRH,
    'Tidal Line LH' : TidalLineLH,
    'Tidal Wave' : TidalWave,
    'Tidal Wave RH BGGB' : TidalWaveRHBGGB,
    'Tidal Wave RH GBBG' : TidalWaveRHGBBG,
    'Tidal Wave RH BGBG' : TidalWaveRHBGBG,
    'Tidal Wave LH BGGB' : TidalWaveLHBGGB,
    'Inverted Tidal Line RH' : InvertedTidalLineRH,
    'Inverted Tidal Line LH' : InvertedTidalLineLH,
    'Tidal 3 and 1 Line #1' : Tidal_3and_1Line1,
    'Tidal 3 and 1 Line #2' : Tidal_3and_1Line2,
    'Tidal 3 and 1 Line #3' : Tidal_3and_1Line3,
    'Tidal 3 and 1 Line #4' : Tidal_3and_1Line4,
    'Tidal 3 and 1 Line #5' : Tidal_3and_1Line5,
    'Tidal 3 and 1 Line #6' : Tidal_3and_1Line6,
    'Tidal 3 and 1 Line #7' : Tidal_3and_1Line7,
    'Tidal 3 and 1 Line #8' : Tidal_3and_1Line8,
    'Tidal Wave of 6' : TidalWaveof_6,
    'Compact Wave of 6' : CompactWaveof_6,
    'I-Beam' : ImBeam,
    'H-Beam' : HmBeam,
    'I-Column' : ImColumn,
    'Misshapen I-Beam' : MisshapenImBeam,
    'X-Beam' : XmBeam,
    'Misshapen X-Beam' : MisshapenXmBeam,
    'Hourglass RH BP' : HourglassRHBP,
    'Hourglass RH GP' : HourglassRHGP,
    'Hourglass LH BP' : HourglassLHBP,
    'Hourglass Facing LH Box' : HourglassFacingLHBox,
    'Hourglass Facing RH Box' : HourglassFacingRHBox,
    'Galaxy RH GP' : GalaxyRHGP,
    'Galaxy LH GP' : GalaxyLHGP,
    'Galaxy Facing RH Box' : GalaxyFacingRHBox,
    'Galaxy Facing LH Box' : GalaxyFacingLHBox,
    'Blocks' : Blocks,
    'Facing Blocks Right' : FacingBlocksRight,
    'Facing Blocks Left' : FacingBlocksLeft,
    'Galaxy 5' : Galaxy_5,
    'Galaxy 6' : Galaxy_6,
    'Galaxy 7' : Galaxy_7,
    'Galaxy 8' : Galaxy_8,
    'Blocks Facing Out' : BlocksFacingOut,
    'Blocks RH' : BlocksRH,
    'Butterfly RH' : ButterflyRH,
    'Butterfly LH' : ButterflyLH,
    'Butterfly In' : ButterflyIn,
    'Butterfly Out' : ButterflyOut,
    'Butterfly Chain Thru' : ButterflyChainThru,
    'Butterfly Trade By' : ButterflyTradeBy,
    'O RH' : ORH,
    'O LH' : OLH,
    'O In' : OIn,
    'O Out' : OOut,
    'O Eight Chain Thru' : OEightChainThru,
    'O Trade By' : OTradeBy,
    'Sausage RH' : SausageRH,
    'T-Bone DLDL' : TmBoneDLDL,
    'T-Bone DRDR' : TmBoneDRDR,
    'T-Bone URUR' : TmBoneURUR,
    'T-Bone RDRD' : TmBoneRDRD,
    'T-Bone URRD' : TmBoneURRD,
    'T-Bone ULLD' : TmBoneULLD,
    'T-Bone DRRU' : TmBoneDRRU,
    'T-Bone ULRU' : TmBoneULRU,
    'T-Bone URLU' : TmBoneURLU,
    'T-Bone DLLU' : TmBoneDLLU,
    'T-Bone DRLD' : TmBoneDRLD,
    'T-Bone DLRD' : TmBoneDLRD,
    'T-Bone LUUR' : TmBoneLUUR,
    'T-Bone RUUL' : TmBoneRUUL,
    'T-Bone LDDR' : TmBoneLDDR,
    'T-Bone RDDL' : TmBoneRDDL,
    'T-Bone LULU' : TmBoneLULU,
    'T-Bone ULUL' : TmBoneULUL,
    'T-Bone LDLD' : TmBoneLDLD,
    'T-Bone URDR' : TmBoneURDR,
    'T-Bone RLUU' : TmBoneRLUU,
    'T-Bone UURL' : TmBoneUURL,
    'T-Bone LRDU' : TmBoneLRDU,
    'T-Bone UDLR' : TmBoneUDLR,
    'T-Bone UDLL' : TmBoneUDLL,
    'T-Bone Couples 1' : TmBoneCouples_1,
    'T-Bone Couples 2' : TmBoneCouples_2,
    'Phantom Formation In' : PhantomFormationIn,
    'Phantom Formation RH' : PhantomFormationRH,
    'Phantom Formation LH' : PhantomFormationLH,
    'Phantom Formation Two-Faced' : PhantomFormationTwomFaced,
    'Phantom Lines In' : PhantomLinesIn,
    'Phantom Lines Out' : PhantomLinesOut,
    'Phantom Waves RH' : PhantomWavesRH,
    'Phantom Waves LH' : PhantomWavesLH,
    'Phantom Two-Faced RH' : PhantomTwomFacedRH,
    'Tidal Line Girls Disconnected' : TidalLineGirlsDisconnected,
    'Phantom Snap Formation 1' : PhantomSnapFormation_1,
    'Phantom Snap Formation 2' : PhantomSnapFormation_2,
    'Triple Boxes' : TripleBoxes,
    'Triple Boxes Close' : TripleBoxesClose,
    'Triple Lines' : TripleLines,
    'Triple Columns' : TripleColumns,
    'Siamese Box 1' : SiameseBox_1,
    'Siamese Box 2' : SiameseBox_2,
    'Siamese Box 3' : SiameseBox_3,
    'Siamese Wave' : SiameseWave,
    'Siamese Wave 2' : SiameseWave_2,
    'Siamese 2-Faced Line' : Siamese_2mFacedLine,
    'Siamese 2-Faced Line 2' : Siamese_2mFacedLine_2,
  };

}
