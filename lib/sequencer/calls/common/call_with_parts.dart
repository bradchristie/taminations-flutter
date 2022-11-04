/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';
import '../xml_call.dart';

mixin CallWithParts {

  //  Classes with parts will override this
  int numberOfParts = 1;

  //  and implement with overrides how ever many of these it has
  void performPart1(CallContext ctx) { }
  void performPart2(CallContext ctx) { }
  void performPart3(CallContext ctx) { }
  void performPart4(CallContext ctx) { }
  void performPart5(CallContext ctx) { }
  void performPart6(CallContext ctx) { }
  void performPart7(CallContext ctx) { }
  void performPart8(CallContext ctx) { }
  //  The call with the most parts is Eight Chain Thru, with 8 parts.
  //  But more parts can be added esp. with 'Interrupt Each Part..'
  //  So make space for a lot more
  //  These are not actually overriden anywhere
  //  but the corresponding replacePart might be used
  void performPart9(CallContext ctx) { }
  void performPart10(CallContext ctx) { }
  void performPart11(CallContext ctx) { }
  void performPart12(CallContext ctx) { }
  void performPart13(CallContext ctx) { }
  void performPart14(CallContext ctx) { }
  void performPart15(CallContext ctx) { }
  void performPart16(CallContext ctx) { }
  void performPart17(CallContext ctx) { }
  void performPart18(CallContext ctx) { }
  void performPart19(CallContext ctx) { }
  void performPart20(CallContext ctx) { }

  void Function(CallContext ctx) performPart(int i) {
    switch (i) {
      case 1 : return performPart1;
      case 2 : return performPart2;
      case 3 : return performPart3;
      case 4 : return performPart4;
      case 5 : return performPart5;
      case 6 : return performPart6;
      case 7 : return performPart7;
      case 8 : return performPart8;
      case 9 : return performPart9;
      case 10 : return performPart10;
      case 11 : return performPart11;
      case 12 : return performPart12;
      case 13 : return performPart13;
      case 14 : return performPart14;
      case 15 : return performPart15;
      case 16 : return performPart16;
      case 17 : return performPart17;
      case 18 : return performPart18;
      case 19 : return performPart19;
      case 20 : return performPart20;
      default: throw CallError('Invalid argument');
    }
  }

  //  When a call with parts is modified with Replace, But, Interrupt etc.
  //  the modification is placed in this array.
  final List<void Function(CallContext ctx)?> replacePart =
  [null,null,null,null,null,null,null,null,null,null,null,
   null,null,null,null,null,null,null,null,null,null,null];

  void Function(CallContext ctx)? get lastPart => replacePart[numberOfParts];
  set lastPart(value) { replacePart[numberOfParts] = value; }

  void perform(CallContext ctx) {
    for (var part=1; part<=numberOfParts; part++) {
      ctx.extendPaths();
      ctx.analyze();
      (replacePart[part]??performPart(part))(ctx);
    }
  }

  void finish(CallContext ctx) {
    replacePart[1] = (ctx) { };
    return perform(ctx);
  }

  void reverseOrder(CallContext ctx) {
    for (var part=numberOfParts; part>=1; part--) {
      ctx.extendPaths();
      (replacePart[part]??performPart(part))(ctx);
    }
  }

  //  Classes override this to provide a part number for a named
  //  call part, like "stars" or "circulates"
  int partNumberForName(String name) => 0;

  //  Utility to parse out a part number from a call
  static final partMap = {
    'First|One|1(st)?'.ri : 1,
    'Second|Two|2(nd)?'.ri : 2,
    'Third|Three|3(rd)?'.ri : 3,
    'Four(th)?|4(th)?'.ri : 4,
    'Fifth|Five|5(th)?'.ri : 5,
    'Six(th)?|6(th)?'.ri : 6,
    'Seven(th)?|7(th)?'.ri : 7,
    'Eighth?|8(th)?'.ri : 8,
    'Last'.ri : -1
  };
  static int partNumberFromCall(CallWithParts call, String name) {
    var partNumber = call.partNumberForName(name);
    if (partNumber == 0) {
      for (var r in partMap.keys) {
        if (name.contains(r)) {
          partNumber = partMap[r]!;
        }
      }
      if (partNumber < 0)
        partNumber = call.numberOfParts;
      if (partNumber == 0)
        partNumber = call.partNumberForName(name);
    }
    return partNumber;
  }

  //  This function is for looking up and performing one part of an XML call.
  //  Useful for calls that have a part that's not easily coded.
  static void performOnePart(CallContext ctx, String name, int partNum) {
    final norm = TamUtils.normalizeCall(name);
    //  Find matching XML call
    for (var entry in XMLCall.lookupAnimatedCall(norm).entries) {
      for (var tam in entry.value) {
        //  Should be divided into parts, will also accept fractions
        final parts = tam.parts;  // fractions?
        final sexy = tam.isGenderSpecific;
        final allp = tam.formation.dancers.map((d) => d.path).toList();
        final partTimes = parts.isBlank ? <double>[] :
            parts.split(';').map((e) => e.d).toList();
        if (partTimes.length+1 >= partNum) {
          //  Load the call and calculate the beats where to splice into the sequence
          final ctx2 = CallContext.fromFormation(tam.formation);
          final startBeat = partTimes.take(partNum-1).fold<double>(0.0, (a, b) => a+b);
          final endBeat = partNum == partTimes.length + 1
              ? ctx2.maxBeats()
              : partTimes.take(partNum).fold<double>(0.0, (a, b) => a+b);
          //  Animate call to the start point and try to match it to the current sequence
          ctx2.animate(startBeat);
          final mapping = ctx.matchFormations(ctx2, sexy: sexy);
          if (mapping != null) {
            //  Adjust sequence dancers as needed to match call
            ctx.adjustToFormationMatch(mapping.match);
            //  Copy path movements from call to sequence
            for (var i = 0; i < mapping.map.length; i++) {
              final m = mapping.map[i];
              // TODO check for asymmetric call!
              var b = 0.0;
              for (final move in allp[m].movelist) {
                if (!b.isLessThan(startBeat) && b.isLessThan(endBeat))
                  ctx.dancers[i].path.add(move);
                b += move.beats;
              }
            }
            return;
          }
        }
      }
    }

    //  failure ends up here
    throw CallError('Unable to perform Part $partNum of $name');

  }

}
