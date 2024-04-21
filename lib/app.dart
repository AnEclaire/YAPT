import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yapt/utils/theme/theme.dart';
import 'package:yapt/features/load_in/screens/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: HAppTheme.lightTheme,
      darkTheme: HAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}