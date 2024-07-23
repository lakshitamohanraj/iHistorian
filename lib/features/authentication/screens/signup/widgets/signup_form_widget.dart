import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../../../controller/signup_controller.dart';
import '../../../models/user_model.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller=Get.put(SignUpController());
    final _formKey=GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical:hFormHeight-10),
      child: Form(
        key:_formKey,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label:Text(hFullName),
                prefixIcon:Icon(Icons.person_outline_rounded,
                ),
              ),
            ),

            const SizedBox(height:hFormHeight-20),

            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label:Text(hEmailText),
                prefixIcon:Icon(Icons.person_outline_rounded,
                ),
              ),
            ),

            const SizedBox(height:hFormHeight-20),

            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label:Text(hPhoneNo),
                prefixIcon:Icon(Icons.person_outline_rounded,
                ),
              ),
            ),
            const SizedBox(height:hFormHeight-20),

            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label:Text(hPasswordText),
                prefixIcon:Icon(Icons.person_outline_rounded,
                ),
              ),
            ),
            const SizedBox(height:hFormHeight-20),
            SizedBox(
              width:double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){

                      // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                      // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                      // Get.to(()=>const OTPScreen());

                      final user=UserModel(
                        email:controller.email.text.trim(),
                        password:controller.password.text.trim(),
                        fullName:controller.fullName.text.trim(),
                        phoneNo:controller.phoneNo.text.trim(),
                      );
                      SignUpController.instance.createUser(user);

                    }
                  },
                  child:  Text(hSignUp.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
