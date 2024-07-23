import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../../../controller/otp_controller.dart';




class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController =Get.put(OTPController());
    var otp;
    return Scaffold(
      body:Container(
        padding:const EdgeInsets.all(hDefaultSize),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(hOtpTitle,style:GoogleFonts.montserrat(
              fontWeight:FontWeight.bold,
              fontSize:80.0,
            )),
            Text(hOtpSubTitle.toUpperCase(),
                style:Theme.of(context).textTheme.headline6),
            const SizedBox(height:40.0),
            Text("$hOtpMessage support@codingwith.com",
              textAlign: TextAlign.center,),
            const SizedBox(height:20.0),

            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled:true,
              onSubmit: (code){
                otp=code;
                OTPController.instance.verifyOTP(otp);
              },
            ),

            const SizedBox(height:20.0),

            SizedBox(
              width:double.infinity,
              child: ElevatedButton(onPressed: (){
                OTPController.instance.verifyOTP(otp);
              },
                  child: const Text(hNext)),
            ),

          ],
        ),
      ),
    );
  }
}
