import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:yapt/features/home/screens/home.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Create navigation controller for indexing on bar
    final controller = Get.put(NavigationController());
    final darkMode = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      // Wrapped Navigation bar for redrawing with Obx and observer updates.
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? HColors.black : HColors.white,
          indicatorColor: darkMode ? HColors.white.withOpacity(0.1) : HColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.document4), label: 'Info'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

// Uses an observer variable to help with updating index without stateful widget.
// Will only redraw what is in this observer.
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Colors.blue)];
}