import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/constant/link.dart';
import 'package:project_one/constant/appText.dart';
import '../../controller/auth/splash_controller.dart';
import '../../widgets/auth/custom_logo.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SplashController());
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 149,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Custom_logo(),
                Image.asset(
                  Link.splash,
                  fit: BoxFit.cover,
                ),
                const Text(
                  AppTexts.titleSplash,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppTexts.generalView,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ),
        Positioned(top: 330, left: 44, child: SvgPicture.asset(Link.groupLeft)),
        Positioned(
            top: 0,
            left: 71,
            child: SvgPicture.asset(
              Link.vectorLeft,
            )),
        Positioned(
            top: 0,
            left: 129,
            child: SvgPicture.asset(
              Link.vectorRight,
            )),
        Positioned(
            top: 315, left: 101, child: SvgPicture.asset(Link.groupRight)),
      ],
    );
  }
}
