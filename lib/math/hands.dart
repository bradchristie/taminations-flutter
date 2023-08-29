/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class Hands {
  static const int NOHANDS = 0;
  static const int NONE = 0;
  static const int LEFTHAND = 1;
  static const int LEFT = 1;
  static const int RIGHTHAND = 2;
  static const int RIGHT = 2;
  static const int BOTHHANDS = 3;
  static const int BOTH = 3;
  static const int ANYGRIP = 4;
  static const int GRIPLEFT = 5;
  static const int GRIPRIGHT = 6;
  static const int GRIPBOTH = 7;

  static int getHands(String h) {
    switch (h) {
      case 'none' : return NOHANDS;
      case 'nohands' : return NOHANDS;
      case 'left' : return LEFTHAND;
      case 'right' : return RIGHTHAND;
      case 'both' : return BOTHHANDS;
      case 'anygrip' : return ANYGRIP;
      case 'gripleft' : return GRIPLEFT;
      case 'gripright' : return GRIPRIGHT;
      case 'gripboth' : return 7;
      default : return 0;
    }
  }

  static String getName(int i) {
    switch (i) {
      case NOHANDS : return 'none';
      case LEFTHAND : return 'left';
      case RIGHTHAND : return 'right';
      case BOTHHANDS : return 'both';
      case ANYGRIP : return 'anygrip';  // not used I think
      case GRIPLEFT : return 'gripleft';
      case GRIPRIGHT : return 'gripright';
      case GRIPBOTH : return 'gripboth';
      default: return 'none';
    }
  }

}

