import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../constants/image_string.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../../signup/signup_page.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height:hFormHeight-20,),
        SizedBox(
          width:double.infinity,
          child: OutlinedButton.icon(
            icon:const Image(image:AssetImage(hGoogleLogoImage),
                width:20.0
            ),
            onPressed: (){},
            label: const Text(hSignInWithGoogle),
          ),
        ),
        const SizedBox(height:hFormHeight-20,),
        TextButton(
          onPressed: (){
            Get.to(()=>const SignUpScreen());
          },
          child:Text.rich(
            TextSpan(
              text:hDontHaveAnAccount,
              style:Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text:hSignUp,
                  style: TextStyle(color:Colors.blue),
                ),],
            ),
          ),


        ),


      ],
    );
  }
}
