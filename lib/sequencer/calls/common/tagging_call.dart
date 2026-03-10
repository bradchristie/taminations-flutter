/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

import '../call.dart';
import '../common.dart';

//  This mixin is for calls that expect some type of tagging
//  call to precede them
//  Examples are <tag> Reaction, <tag> Chain Thru
mixin UsesTaggingCall on Call {

  //  Most but not all of these call are preceded by a tagging call.
  TaggingCall? taggingCall;

  TaggingCall getTaggingCall() =>
      taggingCall ?? thrower<TaggingCall>(
          CallError('$name must be preceded by a tagging call'));
}

//  This mixin is for calls like Vertical Tag
//  that could be followed by a call that implements UsesTagging Call
abstract class TaggingCall extends Action {

  var standalone = false;
  TaggingCall(super.name);

  void performStandaloneCall(CallContext ctx) { }

  @override
  void performCall(CallContext ctx) {
    var user = ctx.findImplementor<UsesTaggingCall>();
    if (user != null)
      user.taggingCall = this;
    //  Most but not all of these call must be followed
    //  by a UsesTaggingCall.  So this check is not required.
    else if (standalone)
      performStandaloneCall(ctx);
    else
      throw CallError('$name must be followed by another call that accepts a tagging call');
  }

  //  Child classes implements this routine to
  //  actually do the tag.
  //  The UsesTaggingCall object is responsible
  //  for calling this method.
  void performTag(CallContext ctx);


}