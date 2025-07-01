
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_one/screen/auth/forgetPassword.dart';
import 'package:project_one/screen/auth/login.dart';
import 'package:project_one/screen/auth/resetpassword.dart';
import 'package:project_one/screen/auth/signup.dart';
import 'package:project_one/screen/auth/splash.dart';

List<GetPage<dynamic>>? getPages = [
GetPage(
name: "/",
page: () =>  const Splash()),
  GetPage(
      name: "/login",
      page: () => const Login(),),
  GetPage(
    name: "/signup",
    page: () => const SignUp(),),
  GetPage(
    name: "/forgotpassword",
    page: () => ForgotPasswordPage(),),
  GetPage(
    name: "/ResetPassword",
    page: () =>  ResetPassword(),)
];