


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../constants/size.dart';
import '../../../../../constants/text.dart';
import '../forgot_password_mail/forgot_password_mail.dart';
import '../forgot_password_phone/forgot_password_phone.dart';
import 'forgot_password_btn_widget.dart';

class ForgetPasswordScreen{

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context:context,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular((20.0))),
      builder:(context)=>Container(
        padding:EdgeInsets.all(hDefaultSize),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hForgotPasswordTitle,style:Theme.of(context).textTheme.headline2),
            Text(hForgetPasswordSubTitle,style:Theme.of(context).textTheme.bodyText1),
            const SizedBox(height:30.0),

            ForgetPasswordBtnWidget(
              onTap: (){
                Navigator.pop(context);
                Get.to(()=>const ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title:hEmailText,
              subtitle: hResetViaEmail,
            ),
            const SizedBox(height:20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title:hPhoneNo,
              subtitle: hResetViaPhone,
              onTap: (){
                Navigator.pop(context);
                Get.to(()=>const ForgetPasswordPhoneNoScreen());
              },
            ),



          ],
        ),
      ),
    );
  }
}

