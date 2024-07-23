import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../common_widgets/form_header_widget.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../forgot_password_otp/forgot_password_otp.dart';



class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.all(hDefaultSize),
            child:Column(
              children:  [
                const  SizedBox(height: hDefaultSize*4,),

                const FormHeaderWidget(
                  image: hForgetPasswordImage,
                  title: hForgotPasswordTitle,
                  subTitle: hForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween:30.0,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height:hFormHeight),

                Form(
                  child:Column(
                    children: [
                      TextFormField(
                        decoration:InputDecoration(
                          label: Text(hEmailText),
                          hintText:hEmailText,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),

                      const SizedBox(height:20.0),
                      SizedBox(
                          width:double.infinity,
                          child: ElevatedButton
                            (onPressed: () {
                            Get.to(() => const OTPScreen());
                          },
                              child: const Text(hNext)))

                    ],
                  ),
                ),


              ],
            ),

          ),
        ),
      ),
    );
  }
}

