import 'package:get/get.dart';
import '../../home/screens/home.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Vars

  // Open Home Page on Click
  void openHome() {
    Get.to(HomeScreen());
  }
}