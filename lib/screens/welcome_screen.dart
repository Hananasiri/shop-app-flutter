import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hanan_shop/auth/login_screen.dart';
import 'package:hanan_shop/routes/routes.dart';
import 'package:hanan_shop/utils/theme.dart';
import 'package:hanan_shop/widgets/text_utils.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('/Users/hananasiri/Desktop/shop-app-flutter/assets/images/background.png',
             fit: BoxFit.cover ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: TextUtils(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        text: 'Welcome',
                        color:  Colors.white,
                        underLine: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextUtils(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        text: 'Hanan',
                        color:  Colors.white, underLine: TextDecoration.none,
                        //underLine: TextDecoration.none,
                      ),
                        const SizedBox(

                        ),
                        TextUtils(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          text: 'Shop',
                          color:  Colors.white,
                          underLine: TextDecoration.none,
                        ),
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  ),
   ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 12,
      )),   
       
       onPressed:() {
         Get.offNamed(Routes.loginScreen);
       },
     child: TextUtils(
       fontSize: 22,
       fontWeight: FontWeight.bold,
       text: 'Go Start',
       color: Colors.white,
       underLine: TextDecoration.none,
     ),
   ),
                  const SizedBox(
                    height: 30,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       TextUtils(
                        fontSize: 18,
                          fontWeight: FontWeight.normal,
                          text: "Don't have an Account?",
                          color: Colors.white,
                         underLine: TextDecoration.none,
                      ),
                      TextButton(onPressed: () {
                        Get.offNamed(Routes.signUpScreen);
                      },
                       child: TextUtils(
                         fontSize: 20,
                         text: 'Sigun Up',
                         color: Colors.white,
                         fontWeight: FontWeight.normal,
                         underLine: TextDecoration.underline,
                       ),
                      )
                    ],
                  )
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
