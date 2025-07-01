import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project_one/widgets/auth/custom_logo.dart';
import 'package:project_one/constant/link.dart';
import 'package:project_one/constant/appText.dart';
import '../../controller/auth/login_controller.dart';
import '../../function/validdition.dart';
import '../../widgets/auth/custom_textformfaild.dart';
import 'package:project_one/constant/color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: SingleChildScrollView(
            child: Form(
              key: controller.form,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                            left: -100,
                            top: -50,
                            child: SvgPicture.asset(
                              Link.rectangleOne,
                              width: 285,
                              height: 171,
                            )),
                        Positioned(
                            left: -100,
                            top: -40,
                            child: SvgPicture.asset(
                              Link.rectangleTwo,
                              width: 285,
                              height: 171,
                            )),
                      ],
                    ),
                  ),
                  const Custom_logo(),
                  const Text(
                    AppTexts.welcom,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(AppTexts.logoInTo),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    validate: (val) => validateInput(val ?? '', "email"),
                    control: controller.email,
                    hint: AppTexts.hintUserName,
                    icon: const Icon(Icons.person),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    control: controller.password,
                    hint: AppTexts.hintPassword,
                    icon: const Icon(Icons.password),
                    validate: (val) => validateInput(val ?? '', "password"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () {
                              controller.goToForgot();
                            },
                            child: const Text(AppTexts.forgotPassword))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: controller.validit,
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(0, 4),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColor.color1, AppColor.color2],
                        ),
                      ),
                      child: const Text(
                        AppTexts.logIn,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(AppTexts.orSign),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.logo_facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            Link.google,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Ionicons.logo_apple,
                        size: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: AppTexts.noAccount,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {controller.goToSign();},
                          text: AppTexts.sign,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff91DDFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
