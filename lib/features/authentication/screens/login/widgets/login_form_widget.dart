import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../../../../../repository/authentication_repo/authentication.dart';
import '../../../controller/login_controller.dart';
import '../../forgot_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller=Get.put(LoginInController());
    final _formKey=GlobalKey<FormState>();

    return Form(
        key:_formKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: hFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller:controller.email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: hEmailText,
                  hintText: hEmailText,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: hFormHeight - 20,),
              TextFormField(
                controller:controller.password,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: hPasswordText,
                  hintText: hPasswordText,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
              ),
              const SizedBox(height: hFormHeight - 20,),
              //Forget password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                }
                    , child: const Text(hForgotPasswordTitle)),
              ),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()) {
                        AuthenticationRepository.instance
                            .loginWithEmailAndPassword(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                      }
                    },
                    child: Text(hLogin.toUpperCase()),
                  )
              )


            ],
          ),
        ));
  }
}