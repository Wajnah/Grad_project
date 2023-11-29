import 'dart:ui';
import '../../core/services/services.dart';
import '/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import '/core/constant/routes.dart';
import '/view/widget/Language/custombuttomlang.dart';
import 'package:get/get.dart';

import 'package:get/get_utils/get_utils.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

// ليتم تشغيله بلغه الجهاز
  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}

class Language extends StatelessWidget {
  get controller => LocaleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRoute.onBoarding);
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onBoarding);
                  }),
            ],
          )),
    );
  }
}
