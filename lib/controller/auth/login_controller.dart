import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_one/screen/auth/forgetPassword.dart';
import 'package:project_one/screen/auth/signup.dart';
import 'package:project_one/screen/auth/splash.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> form = GlobalKey<FormState>();

  void goToForgot() {
    Get.to(ForgotPasswordPage());
  }
  void goToSign() {
    Get.to(const SignUp());
  }

  void validit() {
    if (form.currentState!.validate()) {
      Get.offAll(const Splash());
    } else {
      return;
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }
}
