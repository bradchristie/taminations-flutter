//  This table is indexed by the call name, and gives the title (what to show above the animation),
//  and the link and name to send to the Taminations program to fetch the animation
var calls = {
circleleft : { title:'Circle Left', link:'ssd/circle', animation:'CircleLeft' },
circleright : { title:'Circle Right', link:'ssd/circle', animation:'CircleRight' },
forwardandback : { title:'Forward and Back', link:'ssd/forward_and_back', animation:'ForwardandBackfromLines' },
dosado : { title:'Dosado', link:'ssd/dosado', animation:'DosadoFromFacingCouples' },
swing : { title:'Swing Your Partner', link:'ssd/swing', animation:'SwingYourPartnerfromFacingCouples' },
couplespromenade : { title:'All 4 Couples Promenade', link:'ssd/promenade', animation:'All4CouplesPromenadeFull' },
singlefilepromenade : { title:'Four Girls Promenade', link:'ssd/promenade', animation:'FourGirlsPromenade' },
wrongwaypromenade : { title:'Heads Wrong Way Promenade Half Way', link:'ssd/promenade', animation:'HeadsWrongWayPromenade12' },
starpromenade : { title:'Star Promenade', link:'ssd/promenade', animation:'StarPromenade' },
allemandeleft : { title:'Allemande Left', link:'ssd/allemande', animation:'AllemandeLeftfromStaticSquare' },
armturns : { title:'Turn Partner by the Right', link:'ssd/arm_turns', animation:'TurnPartnerbytheRight' },
rightandleftgrand : { title:'Right and Left Grand', link:'ssd/right_and_left_grand', animation:'RightandLeftGrandfromGrandCircle' },
weavethering : { title:'Weave the Ring', link:'ssd/right_and_left_grand', animation:'WeavetheRing' },
wrongwaygrand : { title:'Wrong Way Grand', link:'ssd/right_and_left_grand', animation:'WrongWayGrandfromGrandCircle' },
lefthandstar : { title:'Heads Left-Hand Star', link:'ssd/star', animation:'HeadsLeftHandStarAlltheWayAround' },
righthandstar : { title:'Heads Right-Hand Star', link:'ssd/star', animation:'HeadsRightHandStarAlltheWayAround' },
courtesyturn : { title:'Courtesy Turn', link:'ssd/courtesy_turn', animation:'CourtesyTurnfromCouplesFacingOut' },
twoladieschain : { title:'Head Ladies Chain', link:'ssd/ladies_chain', animation:'HeadLadiesChain' },
fourladieschain : { title:'Four Ladies Chain', link:'ssd/ladies_chain', animation:'FourLadiesChainfromStaticSquare' },
passthru : { title:'Pass Thru', link:'ssd/pass_thru', animation:'PassThrufromEightChainThru' },
wheelaround : { title:'Wheel Around', link:'ssd/wheel_around', animation:'WheelAroundfromCouplesFacingOut' },
reversewheelaround : { title:'Reverse Wheel Around', link:'ssd/wheel_around', animation:'ReverseWheelAroundfromCouplesFacingOut' },
starthru : { title:'Star Thru', link:'ssd/star_thru', animation:'StarThrufromFacingCouples' },
slidethru : { title:'Slide Thru', link:'ssd/slide_thru', animation:'SlideThrufromFacingCouples' },
halfsashay : { title:'Half Sashay', link:'ssd/sashay', animation:'HalfSashayfromFacingCouples' },
rollaway : { title:'Rollaway', link:'ssd/sashay', animation:'RollawayfromCircleLeft' },
ladiesinmensashay : { title:'Ladies In, Men Sashay', link:'ssd/sashay', animation:'LadiesInMenSashayfromCircleLeft' },
californiatwirl : { title:'California Twirl', link:'ssd/california_twirl', animation:'CaliforniaTwirlfromCouplesFacingOut' },
bendtheline : { title:'Bend the Line', link:'ssd/bend_the_line', animation:'BendtheLinefromLinesFacingOut' },
uturnback : { title:'U-Turn Back', link:'ssd/turn_back', animation:'UTurnBackfromCouplesFacingOut' },
backtrack : { title:'Girls Backtrack', link:'ssd/turn_back', animation:'GirlsBacktrackfromPromenade' },
divethru : { title:'Dive Thru', link:'ssd/dive_thru', animation:'DiveThru' },
squarethru : { title:'Heads Square Thru 4', link:'ssd/square_thru', animation:'HeadsSquareThru4' },
grandsquare : { title:'Sides Face, Grand Square', link:'ssd/grand_square', animation:'SidesFaceGrandSquare' },
leadright : { title:'Heads Lead Right', link:'ssd/lead_right', animation:'HeadsLeadRight' },
leadleft : { title:'Heads Lead Left', link:'ssd/lead_right', animation:'HeadsLeadLeft' },
veerleft : { title:'Veer Left', link:'ssd/veer', animation:'VeerLeftfromEightChainThru' },
veerright : { title:'Veer Right', link:'ssd/veer', animation:'VeerRightfromEightChainThru' },
couplescirculate : { title:'Couples Circulate', link:'ssd/circulate', animation:'CouplesCirculatefromRightHandTwoFacedLines' },
nameddancerscirculate : { title:'Ends Circulate', link:'ssd/circulate', animation:'EndsCirculatefromTwoFacedLines' },
couplestrade : { title:'Couples Trade', link:'ssd/trade', animation:'CouplesTradefromRightHandTwoFacedLines' },
nameddancerstrade : { title:'Girls Trade', link:'ssd/trade', animation:'GirlsTradefromRightHandTwoFacedLines' },
chaindowntheline : { title:'Chain Down the Line', link:'ssd/ladies_chain', animation:'ChainDowntheLinefromTwoFacedLines' },
rightandleftthru : { title:'Right and Left Thru', link:'ssd/right_and_left_thru', animation:'RightandLeftThrufromFacingCouples' },
flutterwheel : { title:'Flutterwheel', link:'ssd/flutterwheel', animation:'FlutterwheelfromFacingCouples' },
reverseflutterwheel : { title:'Reverse Flutterwheel', link:'ssd/flutterwheel', animation:'ReverseFlutterwheelfromFacingCouples' },
sweepaquarter : { title:'Flutterwheel and Sweep a Quarter', link:'ssd/sweep_a_quarter', animation:'FlutterwheelandSweepaQuarter' },
circletoaline : { title:'Circle to a Line', link:'ssd/circle_to_a_line', animation:'CircletoaLine' },
separatearound2toaline : { title:'Heads Pass Thru, Separate, Around 2 to a Line', link:'ssd/separate', animation:'HeadsPassThruSeparateAround2toaLine' },
separatearound1andcomeintothemiddle : { title:'Heads Pass Thru, Separate, Around 1 and Come Into the Middle', link:'ssd/separate', animation:'HeadsPassThruSeparateAround1andComeIntotheMiddle' },
split2 : { title:'Split 2', link:'ssd/split_the_outside_couple', animation:'CentersSplittheOutsideCouple' },
wheelanddeal : { title:'Wheel and Deal', link:'ssd/wheel_and_deal', animation:'WheelandDealfromRightHandTwoFacedLines' },
wheelanddealfromlinesfacingout : { title:'Wheel and Deal', link:'ssd/wheel_and_deal', animation:'WheelandDealfromLinesFacingOut' },
doublepassthru : { title:'Double Pass Thru', link:'ssd/double_pass_thru', animation:'DoublePassThrufromDoublePassThru' },
firstcouplegoleftrightnextcouplegorightleft : { title:'First Couple Go Left, Next Couple Go Right', link:'ssd/first_couple_go', animation:'FirstCoupleGoLeftNextCoupleGoRight' },
steptoawave : { title:'Step to a Wave', link:'ssd/ocean_wave', animation:'SteptoaWavefromFacingCouples' },
balance : { title:'Balance', link:'ssd/ocean_wave', animation:'BalancefromRightHandWaves' },
alamostyle : { title:'Allemande Left in the Alamo Style', link:'ssd/alamo_style', animation:'AllemandeLeftintheAlamoStylefromStaticSquare' },
righthandtrade : { title:'Trade', link:'ssd/trade', animation:'TradefromRightHandWaves' },
lefthandtrade : { title:'Trade', link:'ssd/trade', animation:'TradefromLeftHandWaves' },
swingthru : { title:'Swing Thru', link:'ssd/swing_thru', animation:'SwingThrufromRightHandWaves' },
run : { title:'Boys Run', link:'ssd/run', animation:'BoysRunfromRightHandWaves' },
crossrun : { title:'Girls Cross Run', link:'ssd/run', animation:'CentersCrossRunfromRightHandWaves' },
passtheocean : { title:'Pass the Ocean', link:'ssd/pass_the_ocean', animation:'PasstheOceanfromLines' },
extend : { title:'Extend', link:'ssd/extend', animation:'ExtendfromRightHand14Tag' },
zoom : { title:'Zoom', link:'ssd/zoom', animation:'ZoomfromDoublePassThru' },
centersin : { title:'Centers In', link:'ssd/centers_in', animation:'CentersInfromCompletedDoublePassThru' },
castoff34 : { title:'Cast Off 3/4', link:'ssd/cast_off_three_quarters', animation:'CastOffThreeQuartersfromLinesFacingOut' },
ferriswheel : { title:'Ferris Wheel', link:'ssd/ferris_wheel', animation:'FerrisWheelfromRightHandedTwoFacedLines' },
partnertrade : { title:'Partner Trade', link:'ssd/trade', animation:'PartnerTradefromLinesFacingOut' },
tradeby : { title:'Trade By', link:'ssd/trade_by', animation:'TradeByfromTradeBy' },
boxthegnat : { title:'Box the Gnat', link:'ssd/box_the_gnat', animation:'BoxtheGnatfromFacingCouples' },
hinge : { title:'Hinge', link:'ssd/hinge', animation:'HingefromRightHandWaves' },
touch14 : { title:'Touch 1/4', link:'ssd/touch_a_quarter', animation:'TouchaQuarterfromLines' },
all8circulate : { title:'All 8 Circulate', link:'ssd/circulate', animation:'All8CirculatefromRightHandWaves' },
singlefilecirculate : { title:'Single File Circulate', link:'ssd/circulate', animation:'ColumnCirculatefromRightHandColumns' },
tagtheline : { title:'Tag the Line', link:'ssd/tag', animation:'TagtheLinefromLinesFacingOut' },
halftag : { title:'Half Tag', link:'ssd/fraction_tag', animation:'HalfTagfromRightHandTwoFacedLines' },
splitcirculate : { title:'Split Circulate', link:'ssd/circulate', animation:'SplitCirculatefromRightHandWaves' },
boxcirculate : { title:'Centers Box Circulate', link:'ssd/circulate', animation:'CentersCirculatefromRightHandWaves' },
fold : { title:'Ends Fold', link:'ssd/fold', animation:'EndsFoldfromLinesFacingOut' },
crossfold : { title:'Ends Cross Fold', link:'ssd/fold', animation:'EndsCrossFoldfromLinesFacingOut' },
scootback : { title:'Scoot Back', link:'ssd/scoot_back', animation:'ScootBackfromRightHandWaves' },
recycle : { title:'Recycle', link:'ssd/recycle', animation:'RecyclefromRightHandWave' }

};

//  This routine resizes the web page so navigation buttons or other stuff on phones
//  doesn't cover our content
const resizeOps = () => {
   document.documentElement.style.setProperty("--vh", window.innerHeight * 0.01 + "px");
};

//  Called on startup and when a link in the index is tapped
function setAnimation(title,link,name) {
  //  Set the title, above the animation
  document.getElementById('animation-title').innerHTML = title;
  //  Load Taminations and tell it to show our animation
  document.getElementById('animation').src =
      'https://www.tamtwirlers.org/taminations-test/#?main=ANIMATIONS&link=' + link + '&animname=' + name + '&embed';
  //  Load the definition
  document.getElementById('definition').src = 'https://www.tamtwirlers.org/taminations-test/html/'+link+'.html';
  //  On small screens, show the animation frame
  showAnimation();
}

//  Routines to switch frames on small devices.
function showIndex() {
  document.getElementById('index-page').classList.remove('hide-page');
  document.getElementById('animation-page').classList.add('hide-page');
  document.getElementById('definition-page').classList.add('hide-page');
}
function showDefinition() {
  document.getElementById('index-page').classList.add('hide-page');
  document.getElementById('animation-page').classList.add('hide-page');
  document.getElementById('definition-page').classList.remove('hide-page');
}
function showAnimation() {
  document.getElementById('index-page').classList.add('hide-page');
  document.getElementById('animation-page').classList.remove('hide-page');
  document.getElementById('definition-page').classList.add('hide-page');
}

//  Called once after the web page is loaded
function startup() {
  //  Setup for auto-resizing when phone changes visible area
  resizeOps();
  window.addEventListener("resize", resizeOps);
  //  Default is to show the index
  showIndex();
  //  But if there's a search parameter that makes sense ...
  let q = location.search.substring(1).toLowerCase();
  if (q.length > 0) {
    //  Lookup the call
    var call = calls[q];
    if (call != undefined)
      //  And show that animation
      setAnimation(call.title,call.link,call.animation);
  }

}
