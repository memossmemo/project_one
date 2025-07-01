import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  var otpList = List.generate(6, (_) => TextEditingController()).obs;

  void verifyOtp() {
    String otp = otpList.map((c) => c.text).join();
    if (otp.length == 6) {
      Get.snackbar("تحقق", "جارٍ التحقق من الرمز: $otp",
          backgroundColor: Colors.green, colorText: Colors.white);
    } else {
      Get.snackbar("خطأ", "يرجى إدخال 6 أرقام",
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  void onClose() {
    for (var controller in otpList) {
      controller.dispose();
    }
    super.onClose();
  }
}
