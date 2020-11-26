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

var testSequences = {

  "Back Away" :
  """Heads Right and Left Thru and Back Away
Sides Pass the Ocean""",

  "Beaus Run" :
  """Heads Pass the Ocean
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
Allemande Left""",

  "Belles Run" :
  """Heads Lead Right
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
Allemande Left""",

};

void main() {

  group('Sequence Test Runner', () {

    FlutterDriver driver;
    final sequencerTapper = find.byValueKey("Sequencer");
    final sequencerInput = find.byValueKey("Sequencer Input");
    final sequencerSubmit = find.byValueKey("Submit Call");
    final sequencerReset = find.byValueKey("Reset");
    final errorText = find.byValueKey("Error text");
    var testsFinished = <String>[];
    var testsFailed = testSequences.keys.toSet();

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
      print("All sequencer tests complete.");
      print("These tests ran to completion:");
      for (var testName in testsFinished)
        print("    $testName");
      print("These tests failed:");
      for (var testName in testsFailed)
        print("    $testName");
    });

    test('setup',() async {
        await driver.waitFor(sequencerTapper);
        await driver.tap(sequencerTapper);
        await driver.waitFor(sequencerInput);
      });

    for (var testName in testSequences.keys) {
      test(testName,() async {
        await driver.runUnsynchronized(() async {
        await driver.tap(sequencerReset);
        for (var call in testSequences[testName].split("\n")) {
          await driver.tap(sequencerInput);
          await driver.enterText(call);
          await driver.tap(sequencerSubmit);
          expect(await driver.getText(errorText), "");
        }
        await driver.waitUntilNoTransientCallbacks();
        testsFinished.add(testName);
        testsFailed.remove(testName);
        });
      });
    }

  });


}