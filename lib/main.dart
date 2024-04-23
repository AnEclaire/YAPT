import 'package:yapt/utils/provider_model/ghost_tracker_model.dart';

import 'app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GhostTrackerModel(),
      child: const App(),
    )
  );
}