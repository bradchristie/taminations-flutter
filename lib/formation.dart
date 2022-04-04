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

import 'common.dart';

class Formation {

  final String name;
  final bool asymmetric;
  final List<Dancer> dancers;

  Formation(this.name,this.dancers,{this.asymmetric=false});

  factory Formation.fromXML(XmlElement xml) {
    final dancerElements = xml.childrenNamed('dancer');
    final asymmetric = xml('asymmetric').isNotBlank;
    var numberArray =  ['1','2','3','4','5','6','7','8'];
    var coupleArray = asymmetric
        ? ['1','1','3','3','2','2','4','4']
        : ['1','3','1','3','2','4','2','4'];
    var dancers = <Dancer>[];
    for (var i=0; i<dancerElements.length; i++) {
      var element = dancerElements[i];
      //  This assumes square geometry
      //  Make sure each dancer in the list is immediately followed by its
      //  diagonal opposite, if not asymmetric.  Required for mapping.
      dancers.add(Dancer.fromData(
          number:numberArray[i*2], couple:coupleArray[i*2],
          gender:Gender.fromString(element('gender')),
          x:element('x').d, y:element('y').d, angle: element('angle').d,
          geom: Geometry.getGeometry(Geometry.SQUARE).first
      ));
      if (!asymmetric)
        dancers.add(Dancer.fromData(
            number:numberArray[i*2+1], couple:coupleArray[i*2+1],
            gender:Gender.fromString(element('gender')),
            x:element('x').d, y:element('y').d, angle: element('angle').d,
            geom: Geometry.getGeometry(Geometry.SQUARE)[1]
        ));
    }
    final ff = Formation(xml('title'),dancers,asymmetric: asymmetric);
    return ff;
  }

}