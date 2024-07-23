
import 'package:csi_project/features/core/screens/home.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../../../repository/authentication_repo/authentication.dart';
import '../../../repository/user_repo/user_repository.dart';
import '../models/user_model.dart';


class SignUpController extends GetxController{
  static SignUpController get instance=> Get.find();

  final email=TextEditingController();
  final password=TextEditingController();
  final fullName=TextEditingController();
  final phoneNo=TextEditingController();

  final userRepo=Get.put(UserRepository());
  void registerUser(String email,String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    //phoneAuthentication(user_repo.phoneNo);
    //Get.to(()=>const OTPScreen());
    Get.to(()=>HomePage());
  }

}
