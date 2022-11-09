import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

import '../utils/my_string.dart';
import '../widgets/auth/auth_buttone.dart';
import '../widgets/auth/auth_text_from_field.dart';
import '../widgets/auth/check_widget.dart';
import '../widgets/auth/container_under.dart';

class signUpScreen extends StatelessWidget {
  signUpScreen({Key? key}) : super(key: key);
  final fromKey = GlobalKey<FormState>(); // هنا نتحقق من الفالديشن انها صحيحة
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        elevation: 0,
      ),
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      body: SingleChildScrollView(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                text: "SIGN",
                                color: Get.isDarkMode ? mainColor : pinkClr,
                                underLine: TextDecoration.none),
                            const SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                text: "UP",
                                color: Get.isDarkMode
                                    ? Colors.black
                                    : Colors.white,
                                underLine: TextDecoration.none),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFromField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length <= 2 ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Enter valid name';
                            } else {
                              return null;
                            }
                          },
                          prefixIcone: Get.isDarkMode
                              ? Image.asset(
                                  '/Users/hananasiri/Desktop/hanan-shop/assets/images/user.png')
                              : Icon(
                                  Icons.person,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcone: const Text(""),
                          hintText: "user name",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(validationName).hasMatch(value)) {
                              return 'Invalid email';
                            } else {
                              return null;
                            }
                          },

                          prefixIcone: Get.isDarkMode
                              ? Image.asset(
                                  '/Users/hananasiri/Desktop/hanan-shop/assets/images/email.png')
                              : Icon(
                                  Icons.email_rounded,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcone: const Text(""),
                          hintText: "Email",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFromField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return 'password should be longer or equal to 6 charactors';
                            } else {
                              return null;
                            }
                          },

                          prefixIcone: Get.isDarkMode
                              ? Image.asset(
                                  '/Users/hananasiri/Desktop/hanan-shop/assets/images/lock.png')
                              : Icon(
                                  Icons.lock,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcone: const Text(""),
                          hintText: "Password",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        CheckWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        AuthButtone(
                          onPressed: () {},
                          text: "Sign Up",
                        ),
                      ],
                    ),
                  )),
              ContainerUnder(
                text: 'Already have an Account?',
                textType: 'Log in',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
