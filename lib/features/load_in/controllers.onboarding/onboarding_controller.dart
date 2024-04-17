import 'package:get/get.dart';
import '../../../navigation_menu.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Vars

  // Open Home Page on Click
  void openHome() {
    Get.to(() => const NavigationMenu());
  }
}