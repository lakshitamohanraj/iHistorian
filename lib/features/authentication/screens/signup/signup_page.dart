import 'package:csi_project/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../common_widgets/form_header_widget.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text.dart';
import '../login/login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(hDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                  image: hLogoImage,
                  title: hSignUpTitle,
                  subTitle: hSignUpSubTitle,
                ),

                const SignUpFormWidget(),


                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(image: AssetImage(hGoogleLogoImage),
                            width: 20.0),
                        label: Text(hSignInWithGoogle.toUpperCase()),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Get.to(() => const LoginScreen());
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: hAlreadyHaveAnAccount,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1),
                            TextSpan(text: hLogin.toUpperCase(),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}