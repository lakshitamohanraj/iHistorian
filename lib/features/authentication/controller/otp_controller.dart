



import 'package:csi_project/features/core/screens/home.dart';
import 'package:get/get.dart';

import '../../../repository/authentication_repo/authentication.dart';


class OTPController extends GetxController{
  static OTPController get instance => Get.find();


  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified? Get.offAll(HomePage()): Get.back();
  }
}