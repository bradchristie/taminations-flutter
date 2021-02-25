/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

function upgradeAbbreviations() {
  //  See if we have old abbreviations but not Flutter abbreviations
  var hasOldAbbreviations = false;
  for (var i=0; i<localStorage.length; i++)
    if (localStorage.key(i).substring(0,6) == 'abbrev')
      hasOldAbbreviations = true;
  if (localStorage.getItem('flutter.+abbrev stored'))
    console.log('Flutter abbreviations already initialized.');
  else if (!hasOldAbbreviations)
    console.log('No abbreviations found.');
  else {
    console.log('Upgrading abbreviations.');
    //  Get all the old abbreviations
    var oldKeys = [];
    for (var j=0; j<localStorage.length; j++) {
      var key = localStorage.key(j);
      console.log('key: '+key);
      if (key.substring(0,6)  == 'abbrev')
        oldKeys.push(key);
    }
    //  Copy to what Flutter wants
    //  Flutter wants all values quoted
    for (var k=0; k<oldKeys.length; k++)
      localStorage.setItem('flutter.'+oldKeys[k],
                           '"'+localStorage.getItem(oldKeys[k])+'"');
    //  Finally flag that we have stored them
    //  so Flutter doesn't try to store the default abbreviations
    localStorage.setItem('flutter.+abbrev stored','"true"');
    console.log('Total of '+oldKeys.length+' abbreviations upgraded.');
  }
}

upgradeAbbreviations();