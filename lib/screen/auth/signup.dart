import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:project_one/constant/appText.dart';
import 'package:project_one/constant/color.dart';
import '../../controller/auth/sign_controller.dart';
import '../../function/validdition.dart';
import '../../widgets/auth/custom_textformfaild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState ();
}

class _SignUpState  extends State<SignUp> {
  SignController controller = Get.put(SignController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: controller.form,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  AppTexts.lets,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const Text(
                  AppTexts.create,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.textEditingController.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CustomTextFormField(
                          control: controller.textEditingController[index],
                          hint: controller.hint[index],
                          icon: controller.icon[index],
                          validate: (val) =>
                              validateInput(val ?? '', controller.type[index]),
                        ),
                        const SizedBox(height: 24),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    controller.submitForm();
                  },
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
                        colors: [
                          AppColor.color1,
                          AppColor.color2,
                        ],
                      ),
                    ),
                    child: const Text(
                      AppTexts.sign,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    text: AppTexts.already,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: AppTexts.loginHere,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.color1,
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
    );
  }
}
