import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screen/auth/splash.dart';

import '../../constant/appText.dart';
import '../../constant/color.dart';

class SignController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late List<TextEditingController> textEditingController;
  late List<String> hint;
  late List<Icon> icon;
  late List<String> type;

  void submitForm() {
    if (form.currentState!.validate()) {
      Get.offAll(const Splash());
    } else {
      return;
    }
  }

  @override
  void onInit() {
    super.onInit();
    firstName = TextEditingController();
    lastName = TextEditingController();
    userName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    textEditingController = [
      firstName,
      lastName,
      userName,
      email,
      password,
      confirmPassword,
    ];

    hint = [
      AppTexts.hintFirstName,
      AppTexts.hintLastName,
      AppTexts.hintUserName,
      AppTexts.hintEmail,
      AppTexts.hintPassword,
      AppTexts.hintConfirmPassword,
    ];
    icon = [
      Icon(Icons.person, color: AppColor.color1),
      Icon(Icons.person_2, color: AppColor.color1),
      Icon(Icons.person_2_rounded, color: AppColor.color1),
      Icon(
        Icons.email,
        color: AppColor.color1,
      ),
      Icon(Icons.password, color: AppColor.color1),
      Icon(Icons.password, color: AppColor.color1),
    ];
    type = [
      "name",
      "name",
      "username",
      "email",
      "password",
      "password"
    ];
  }

  @override
  void onClose() {
    for (var controller in textEditingController) {
      controller.dispose();
    }
    super.onClose();
  }
}
