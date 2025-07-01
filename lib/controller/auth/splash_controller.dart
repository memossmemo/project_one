import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screen/auth/login.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(const Login());
    });
  }
}
