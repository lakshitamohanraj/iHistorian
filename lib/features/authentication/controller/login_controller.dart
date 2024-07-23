


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../../../repository/authentication_repo/authentication.dart';

class LoginInController extends GetxController{
  static LoginInController get instance=> Get.find();

  final email=TextEditingController();
  final password=TextEditingController();


  void loginInUser(String email,String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }

}
