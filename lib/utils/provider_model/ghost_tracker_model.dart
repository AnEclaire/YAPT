import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yapt/utils/constants/enums.dart';

class GhostTrackerModel extends ChangeNotifier {
  final ghostEvidence _uv = ghostEvidence("uv", false);
  final ghostEvidence _emf = ghostEvidence("emf", false);
  final ghostEvidence _dots = ghostEvidence("dots", false);
  final ghostEvidence _orbs = ghostEvidence("orbs", false);
  final ghostEvidence _writing = ghostEvidence("writing", false);
  final ghostEvidence _freezing = ghostEvidence("freezing", false);
  final ghostEvidence _spiritbox = ghostEvidence("spiritbox", false);

  int amountOfEvidence = 0;

  List<Ghost> _validGhosts = List.from(Ghost.values);

  /// Needs to be cleaned up for base case and 1 evidence case.
  void updateList() {
    List<ghostEvidence> evi = getEvidence(); // Populates evi with all current evidence.
    // Base case, no evidence.
    if(!_emf._status && !_dots._status && !_uv._status && !_orbs._status && !_writing._status && !_spiritbox._status && !_freezing._status) {
      _validGhosts = List.from(Ghost.values);
      notifyListeners();
    } else if(amountOfEvidence == 1)  { // Case for 1 Evidence
      _validGhosts = [];
      for(var ghost in Ghost.values) {
        if(checkEvidenceThorough(evi, ghost)) {
          _validGhosts.add(ghost);
        }
      }
      if(!_validGhosts.contains(Ghost.Mimic) && (evi.elementAt(0).type == "orbs")) {
        _validGhosts.add(Ghost.Mimic);
      }
    } else if(amountOfEvidence == 2) { // 2 Evidence Case
      _validGhosts = []; // clears list
        for(var ghost in Ghost.values) { // For all ghosts, iterate
          if(checkEvidenceThorough(evi, ghost)) { // if the ghost's evidence matches what we have
            _validGhosts.add(ghost);
          }
        }
      if(!_validGhosts.contains(Ghost.Mimic) && (evi.elementAt(0).type == "orbs" || evi.elementAt(1).type == "orbs")) {
        _validGhosts.add(Ghost.Mimic);
      }
    } else if(amountOfEvidence == 3) { // 3 Evidence case
      _validGhosts = [];
      for(var ghost in Ghost.values) {
        if(checkEvidenceThorough(evi, ghost)) {
          _validGhosts.add(ghost);
        }
      }
      if(!_validGhosts.contains(Ghost.Mimic) && _validGhosts.length != 1 && (evi.elementAt(0).type == "orbs" || evi.elementAt(1).type == "orbs" || evi.elementAt(2).type == "orbs")) {
        _validGhosts.add(Ghost.Mimic);
      }
    } else if(amountOfEvidence == 4) {
      _validGhosts = [];
      for(var eTemp in evi) {
        if(getIconForGhost(eTemp) == Ionicons.videocam) {
          _validGhosts.add(Ghost.Mimic);
        }
      }
    }
    notifyListeners();
  }

  /// misc getters
  bool get uv => _uv._status;
  bool get emf => _emf._status;
  bool get dots => _dots._status;
  bool get orbs => _orbs._status;
  bool get writing => _writing._status;
  bool get freezing => _freezing._status;
  bool get spiritbox => _spiritbox._status;

  List get ghosts => _validGhosts;
  int get size => _validGhosts.length;

  /// 7 Total toggles for each of the evidences. Can likely be
  /// made into one function but that is not mission critical.
  void toggleEmf() {
    evidenceModifier(_emf._status);
    _emf._status = !_emf._status;
    notifyListeners();
  }

  void toggleDots() {
    evidenceModifier(_dots._status);
    _dots._status = !_dots._status;
    notifyListeners();
  }

  void toggleUV() {
    evidenceModifier(_uv._status);
    _uv._status = !_uv._status;
    notifyListeners();
  }

  void toggleOrbs() {
    evidenceModifier(_orbs._status);
    _orbs._status = !_orbs._status;
    notifyListeners();
  }

  void toggleWriting() {
    evidenceModifier(_writing._status);
    _writing._status = !_writing._status;
    notifyListeners();
  }

  void toggleSpiritbox() {
    evidenceModifier(_spiritbox._status);
    _spiritbox._status = !_spiritbox._status;
    notifyListeners();
  }

  void toggleFreezing() {
    evidenceModifier(_freezing._status);
    _freezing._status = !_freezing._status;
    notifyListeners();
  }

  void resetAll() {
    amountOfEvidence = 0;
    _emf._status = false;
    _dots._status = false;
    _uv._status = false;
    _orbs._status = false;
    _writing._status = false;
    _spiritbox._status = false;
    _freezing._status = false;
    updateList();
  }

  /// return false if evidence mismatch. returns true if 2 evidence match.
  /// Passed in values: [evi] - list of type ghostEvidence
  ///                   [gh] - Ghost
  bool checkEvidenceThorough(List<ghostEvidence> evi, Ghost gh) {
    if(amountOfEvidence == 1) {
      for(var value in evi) {
        if(gh.evidence1 == getIconForGhost(value)) {
          return true;
        } else if(gh.evidence2 == getIconForGhost(value)) {
          return true;
        } else if(gh.evidence3 == getIconForGhost(value)) {
          return true;
        } else {
          return false;
        }
      }
    }
    if(amountOfEvidence == 2) {
      if(gh.evidence1 == getIconForGhost(evi.elementAt(0)) || gh.evidence1 == getIconForGhost(evi.elementAt(1))) {
        if(gh.evidence2 == getIconForGhost(evi.elementAt(0)) || gh.evidence2 == getIconForGhost(evi.elementAt(1))) {
          return true;
        } else if(gh.evidence3 == getIconForGhost(evi.elementAt(0)) || gh.evidence3 == getIconForGhost(evi.elementAt(1))) {
          return true;
        }
      } else if(gh.evidence2 == getIconForGhost(evi.elementAt(0)) || gh.evidence2 == getIconForGhost(evi.elementAt(1))) {
        if(gh.evidence3 == getIconForGhost(evi.elementAt(0)) || gh.evidence3 == getIconForGhost(evi.elementAt(1))) {
          return true;
        }
      }
    }
    if(amountOfEvidence == 3) {
        if(gh.evidence1 == getIconForGhost(evi.elementAt(0)) || gh.evidence1 == getIconForGhost(evi.elementAt(1)) || gh.evidence1 == getIconForGhost(evi.elementAt(2))) { // Ghost's first evidence match.
          if(gh.evidence2 == getIconForGhost(evi.elementAt(0)) || gh.evidence2 == getIconForGhost(evi.elementAt(1)) || gh.evidence2 == getIconForGhost(evi.elementAt(2))) { // Ghost's second evidence match.
            if(gh.evidence3 == getIconForGhost(evi.elementAt(0)) || gh.evidence3 == getIconForGhost(evi.elementAt(1)) || gh.evidence3 == getIconForGhost(evi.elementAt(2))) { // Third matches
              return true;
            }
          }
        }
    }
    return false;
  }

  /// Decrements global [amountOfEvidence] variable when passed in
  /// bool is false, increments otherwise.
  void evidenceModifier(bool evi) {
    if(evi == true) {
      amountOfEvidence--;
    } else {
      amountOfEvidence++;
    }
  }

  /// Returns a list of evidence that contains ghostEvidence objects
  /// that have a type value of true.
  List<ghostEvidence> getEvidence() {
    List<ghostEvidence> evi = [];
    if(_uv.status) { evi.add(_uv);}
    if(_emf.status) { evi.add(_emf);}
    if(_dots.status) { evi.add(_dots);}
    if(_orbs.status) { evi.add(_orbs);}
    if(_writing.status) { evi.add(_writing);}
    if(_spiritbox.status) { evi.add(_spiritbox);}
    if(_freezing.status) { evi.add(_freezing);}
    return evi;
  }

  /// Returns an [IoniconsData] variable that matches the type of the
  /// passed in [ghostEvidence] object.
  IoniconsData getIconForGhost(ghostEvidence evidence) {
    IoniconsData temp = Ionicons.information;
    //print(identical(_emf.type, evidence.type));
    if(identical(_emf.type, evidence.type)) {temp = Ionicons.flash;}
    if(identical(_dots.type, evidence.type)) {temp = Ionicons.apps;}
    if(identical(_uv.type, evidence.type)) {temp = Ionicons.hand_right;}
    if(identical(_orbs.type, evidence.type)) {temp = Ionicons.videocam;}
    if(identical(_writing.type, evidence.type)) {temp = Ionicons.book;}
    if(identical(_spiritbox.type, evidence.type)) {temp = Ionicons.call;}
    if(identical(_freezing.type, evidence.type)) {temp = Ionicons.snow;}
    return temp;
  }
}

/// Simple class made with assistance from Velt. Stores a type
/// as a string for the name of evidence and a status as a bool
/// to denote if the evidence is on/off.
class ghostEvidence {
  String _type = "";
  bool _status = false;
  ghostEvidence(String type, bool status) {
    this.type = type;
    this.status = status;
  }
  set type(String inputString) {
    _type = inputString;
  }
  set status(bool inputStatus) {
    _status = inputStatus;
  }
  String get type => _type;
  bool get status => _status;
}
