import 'package:caotgory/view/Screen/auth/login.dart';

import '/controller/signUpController.dart';
import '/core/constant/color.dart';
import 'package:caotgory/core/functions/alertexitapp.dart';
import 'package:caotgory/core/functions/validinput.dart';
import '/view/widget/custombuttonauth.dart';
import '/view/widget/customtextbodyauth.dart';
import '/view/widget/customtextformauth.dart';
import '/view/widget/customtexttitleauth.dart';
import '/view/widget/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? selectedAccountType;
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.orange)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text: "Sign Up With Your Email And Password"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.username,
            hinttext: "Enter Your Username",
            iconData: Icons.person_outline,
            labeltext: "Username",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "Enter Your Phone",
            iconData: Icons.phone_android_outlined,
            labeltext: "Phone",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "Sign Up as a Customer", onPressed: () {}),
          CustomButtomAuth(
              text: "Sign Up as a business Owner", onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: " have an account ? ",
            texttwo: " Login ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );

              // controller.goToSignIn();
            },
          ),
        ]),
      ),
    );
  }
}
