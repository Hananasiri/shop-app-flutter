import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/auth/auth_buttone.dart';

import '../utils/my_string.dart';
import '../widgets/auth/auth_text_from_field.dart';


class ForgotPasswordScreen extends StatelessWidget {
   ForgotPasswordScreen({Key? key}) : super(key: key);

   final TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
    appBar: AppBar(
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      centerTitle:  true,
      elevation: 0,
      title: Text(
        'forget password',
        style: TextStyle(
          color: Get.isDarkMode ? mainColor : pinkClr,
        )
      ),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
        color: Get.isDarkMode ? Colors.white : darkGreyClr,
      ),
    ),
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          body: Form(
            key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment:  Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                        'if you want to recorve your account,then please provide your email Id below..',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
              ),
            const  SizedBox(
              height:50,
            ),
           Image.asset('/Users/hananasiri/Desktop/shop-app-flutter/assets/images/forgetpass copy.png',
             width: 250,
           ),
                    const  SizedBox(
                      height:50,
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
                          '/Users/hananasiri/Desktop/shop-app-flutter/assets/images/forgetpass copy.png')
                          : Icon(
                        Icons.email_rounded,
                        color: pinkClr,
                        size: 30,
                      ),
                      suffixIcone: const Text(""),
                      hintText: "Email",
                    ),
                    const  SizedBox(
                      height:50,
                    ),
                    AuthButtone(
                      onPressed: () {},
                      text: "SEND",
                    )
                  ],
                ),
              ),
          ),
    ),

    );

  }
}
