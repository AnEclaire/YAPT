import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yapt/utils/constants/enums.dart';

class GhostTrackerModel extends ChangeNotifier {
  bool _emf = false;
  bool _dots = false;
  bool _uv = false;
  bool _orbs = false;
  bool _writing = false;
  bool _spiritbox = false;
  bool _freezing = false;

  List<Ghost> _validGhosts = List.from(Ghost.values);

  void updateList() {
    if(!_emf && !_dots && !_uv && !_orbs && !_writing && !_spiritbox && !_freezing) {
      _validGhosts = List.from(Ghost.values);
      notifyListeners();
    } else {
      _validGhosts.removeRange(0, _validGhosts.length);
      notifyListeners();

      if(_emf) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.flash || ghost.evidence2 == Ionicons.flash || ghost.evidence1 == Ionicons.flash)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_dots) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.apps || ghost.evidence2 == Ionicons.apps || ghost.evidence1 == Ionicons.apps)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_freezing) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.snow || ghost.evidence2 == Ionicons.snow || ghost.evidence1 == Ionicons.snow)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_orbs) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.videocam || ghost.evidence2 == Ionicons.videocam || ghost.evidence1 == Ionicons.videocam)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_spiritbox) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.call || ghost.evidence2 == Ionicons.call || ghost.evidence1 == Ionicons.call)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_uv) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.hand_right || ghost.evidence2 == Ionicons.hand_right || ghost.evidence1 == Ionicons.hand_right)) {
            _validGhosts.add(ghost);
          }
        });
      } else if(_writing) {
        Ghost.values.forEach((ghost) {
          if((ghost.evidence3 == Ionicons.book || ghost.evidence2 == Ionicons.book || ghost.evidence1 == Ionicons.book)) {
            _validGhosts.add(ghost);
          }
        });
      }
      notifyListeners();
    }
  }

  List get ghosts => _validGhosts;

  int get size => _validGhosts.length;

  bool get emf => _emf;
  bool get dots => _dots;
  bool get uv => _uv;
  bool get orbs => _orbs;
  bool get writing => _writing;
  bool get spiritbox => _spiritbox;
  bool get freezing => _freezing;

  void toggleEmf() {
    _emf = !_emf;
    notifyListeners();
  }

  void toggleDots() {
    _dots = !_dots;
    notifyListeners();
  }

  void toggleUV() {
    _uv = !_uv;
    notifyListeners();
  }

  void toggleOrbs() {
    _orbs = !_orbs;
    notifyListeners();
  }

  void toggleWriting() {
    _writing = !_writing;
    notifyListeners();
  }

  void toggleSpiritbox() {
    _spiritbox = !_spiritbox;
    notifyListeners();
  }

  void toggleFreezing() {
    _freezing = !_freezing;
    notifyListeners();
  }
}
