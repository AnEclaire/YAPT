
// LIST OF ENUMS
// They cannot be within a class.

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

enum TextSizes {small, medium, large}

enum Ghost {
  Spirit, Wraith, Phantom, Poltergeist,
  Banshe, Jinn, Mare, Revenant,
  Shade, Demon, Yurei, Oni,
  Yokai, Hantu, Goryo, Myling,
  Onryo, Twins, Raiju, Obake,
  Mimic, Moroi, Deogen, Thaye
}

extension Evidence1 on Ghost {

  IoniconsData get evidence1 {
    switch(this) {
      case Ghost.Spirit:
        return Ionicons.flash;
      case Ghost.Wraith:
        return Ionicons.flash;
      case Ghost.Phantom:
        return Ionicons.apps;
      case Ghost.Poltergeist:
        return Ionicons.hand_right;
      case Ghost.Banshe:
        return Ionicons.apps;
      case Ghost.Jinn:
        return Ionicons.flash;
      case Ghost.Mare:
        return Ionicons.videocam;
      case Ghost.Revenant:
        return Ionicons.videocam;
      case Ghost.Shade:
        return Ionicons.flash;
      case Ghost.Demon:
        return Ionicons.hand_right;
      case Ghost.Yurei:
        return Ionicons.apps;
      case Ghost.Oni:
        return Ionicons.flash;
      case Ghost.Yokai:
        return Ionicons.apps;
      case Ghost.Hantu:
        return Ionicons.hand_right;
      case Ghost.Goryo:
        return Ionicons.flash;
      case Ghost.Myling:
        return Ionicons.flash;
      case Ghost.Onryo:
        return Ionicons.videocam;
      case Ghost.Twins:
        return Ionicons.flash;
      case Ghost.Raiju:
        return Ionicons.flash;
      case Ghost.Obake:
        return Ionicons.flash;
      case Ghost.Mimic:
        return Ionicons.hand_right;
      case Ghost.Moroi:
        return Ionicons.book;
      case Ghost.Deogen:
        return Ionicons.apps;
      case Ghost.Thaye:
        return Ionicons.apps;
      default:
        return Ionicons.close;
    }
  }

  IoniconsData get evidence2 {
    switch(this) {
      case Ghost.Spirit:
        return Ionicons.book;
      case Ghost.Wraith:
        return Ionicons.apps;
      case Ghost.Phantom:
        return Ionicons.hand_right;
      case Ghost.Poltergeist:
        return Ionicons.book;
      case Ghost.Banshe:
        return Ionicons.hand_right;
      case Ghost.Jinn:
        return Ionicons.hand_right;
      case Ghost.Mare:
        return Ionicons.book;
      case Ghost.Revenant:
        return Ionicons.book;
      case Ghost.Shade:
        return Ionicons.book;
      case Ghost.Demon:
        return Ionicons.book;
      case Ghost.Yurei:
        return Ionicons.videocam;
      case Ghost.Oni:
        return Ionicons.apps;
      case Ghost.Yokai:
        return Ionicons.videocam;
      case Ghost.Hantu:
        return Ionicons.videocam;
      case Ghost.Goryo:
        return Ionicons.apps;
      case Ghost.Myling:
        return Ionicons.hand_right;
      case Ghost.Onryo:
        return Ionicons.call;
      case Ghost.Twins:
        return Ionicons.call;
      case Ghost.Raiju:
        return Ionicons.apps;
      case Ghost.Obake:
        return Ionicons.hand_right;
      case Ghost.Mimic:
        return Ionicons.call;
      case Ghost.Moroi:
        return Ionicons.call;
      case Ghost.Deogen:
        return Ionicons.book;
      case Ghost.Thaye:
        return Ionicons.videocam;
      default:
        return Ionicons.close;
    }
  }

  IoniconsData get evidence3 {
    switch(this) {
      case Ghost.Spirit:
        return Ionicons.call;
      case Ghost.Wraith:
        return Ionicons.call;
      case Ghost.Phantom:
        return Ionicons.call;
      case Ghost.Poltergeist:
        return Ionicons.call;
      case Ghost.Banshe:
        return Ionicons.videocam;
      case Ghost.Jinn:
        return Ionicons.snow;
      case Ghost.Mare:
        return Ionicons.call;
      case Ghost.Revenant:
        return Ionicons.snow;
      case Ghost.Shade:
        return Ionicons.snow;
      case Ghost.Demon:
        return Ionicons.snow;
      case Ghost.Yurei:
        return Ionicons.snow;
      case Ghost.Oni:
        return Ionicons.snow;
      case Ghost.Yokai:
        return Ionicons.call;
      case Ghost.Hantu:
        return Ionicons.snow;
      case Ghost.Goryo:
        return Ionicons.hand_right;
      case Ghost.Myling:
        return Ionicons.book;
      case Ghost.Onryo:
        return Ionicons.snow;
      case Ghost.Twins:
        return Ionicons.snow;
      case Ghost.Raiju:
        return Ionicons.videocam;
      case Ghost.Obake:
        return Ionicons.videocam;
      case Ghost.Mimic:
        return Ionicons.snow;
      case Ghost.Moroi:
        return Ionicons.snow;
      case Ghost.Deogen:
        return Ionicons.call;
      case Ghost.Thaye:
        return Ionicons.book;
      default:
        return Ionicons.close;
    }
  }

  String get name {
    switch(this) {
      case Ghost.Spirit:
        return "Spirit";
      case Ghost.Wraith:
        return "Wraith";
      case Ghost.Phantom:
        return "Phantom";
      case Ghost.Poltergeist:
        return "Poltergeist";
      case Ghost.Banshe:
        return "Banshee";
      case Ghost.Jinn:
        return "Jinn";
      case Ghost.Mare:
        return "Mare";
      case Ghost.Revenant:
        return "Revenant";
      case Ghost.Shade:
        return "Shade";
      case Ghost.Demon:
        return "Demon";
      case Ghost.Yurei:
        return "Yurei";
      case Ghost.Oni:
        return "Oni";
      case Ghost.Yokai:
        return "Yokai";
      case Ghost.Hantu:
        return "Hantu";
      case Ghost.Goryo:
        return "Goryo";
      case Ghost.Myling:
        return "Myling";
      case Ghost.Onryo:
        return "Onryo";
      case Ghost.Twins:
        return "The Twins";
      case Ghost.Raiju:
        return "Raiju";
      case Ghost.Obake:
        return "Obake";
      case Ghost.Mimic:
        return "The Mimic";
      case Ghost.Moroi:
        return "Moroi";
      case Ghost.Deogen:
        return "Deogen";
      case Ghost.Thaye:
        return "Thaye";
      default:
        return "DevTeam";
    }
  }
}