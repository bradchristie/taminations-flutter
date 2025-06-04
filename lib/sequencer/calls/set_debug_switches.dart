/*
 * *     Copyright 2024 Brad Christie
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

import '../../debug_switch.dart';
import 'coded_call.dart';
import 'common.dart';

class SetDebugSwitch extends CodedCall {

  @override var help =
  '''Collisions
Hidden
Mapping
NoSnap
Parsing
Perform''';

  SetDebugSwitch(super.name);

  @override
  void performCall(CallContext ctx) {
    if (name.contains('pars'.ri))
      DebugSwitch.parsing.enabled = !name.contains('off'.ri);
    else if (name.contains('col'.ri))
      DebugSwitch.collisions.enabled = !name.contains('off'.ri);
    else if (name.contains('hidden'.ri))
      DebugSwitch.showHiddenAnimations.enabled = !name.contains('off'.ri);
    else if (name.contains('mapping'.ri))
      DebugSwitch.mapping.enabled = !name.contains('off'.ri);
    else if (name.contains('perform'.ri))
      DebugSwitch.perform.enabled = !name.contains('off'.ri);
    else if (name.contains('nosnap'.ri))
      DebugSwitch.nosnap.enabled = !name.contains('off'.ri);
  }

}