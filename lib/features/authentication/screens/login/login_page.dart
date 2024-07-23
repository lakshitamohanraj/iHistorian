import 'package:csi_project/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:csi_project/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form_header_widget.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child:Container(
            padding: const EdgeInsets.all(hDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: hLogoImage,
                    title: hLoginTitle,
                    subTitle: hLoginSubTitle),

                LoginForm(),

                LoginFooterWidget(),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
