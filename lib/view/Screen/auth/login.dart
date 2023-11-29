import 'package:flutter/material.dart';
import '/core/constant/color.dart';
import 'package:caotgory/controller/loginController.dart';
import 'package:caotgory/core/class/statusrequest.dart';
import 'package:caotgory/core/functions/alertexitapp.dart';
import 'package:caotgory/core/functions/validinput.dart';
import '/view/widget/custombuttonauth.dart';
import '/view/widget/customtextbodyauth.dart';
import '/view/widget/customtextformauth.dart';
import '/view/widget/customtexttitleauth.dart';
import '/view/widget/logoauth.dart';
import 'signUp.dart';
import 'package:caotgory/view/Screen/Category.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.orange)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Welcome"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          const CustonTextFormAuth(
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email", mycontroller: null,
            // mycontroller: ,
          ),
          const CustonTextFormAuth(
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password", mycontroller: null,
            // mycontroller: ,
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
          CustomButtomAuth(
              text: "Sign In",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoriesPage(),
                  ),
                );
              }),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ? "),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text("Sign Up",
                    style: TextStyle(
                        color: AppColor.orange, fontWeight: FontWeight.bold)),
              )
            ],
          )
        ]),
      ),
    );
  }
}
