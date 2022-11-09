import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

class AuthButtone extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButtone({
    required this.onPressed,
    required this.text,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Get.isDarkMode? mainColor : pinkClr,
          minimumSize: const Size(360,50),
        ),
        child: TextUtils(
    color: Colors.white,
    text: text,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    underLine: TextDecoration.none,
    ),
    );
  }
}
