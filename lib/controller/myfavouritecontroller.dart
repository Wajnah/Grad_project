import 'package:flutter/material.dart';

import '/core/class/statusrequest.dart';
import '/core/functions/handingdatacontroller.dart';
import '/core/services/services.dart';
import '/data/datasource/remote/favoritedata.dart';
import '/data/datasource/remote/myfavoritesdata.dart';
import '/data/model/myfavoritesmodel.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  MyFavoritesData favoriteData = MyFavoritesData(Get.find());

  List<MyFavoriteModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  set search(TextEditingController search) {}

//  key => id items
//  Value => 1 OR 0

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
        print("data");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleteFromFavorite(String favroiteid) {
    // data.clear();
    // statusRequest = StatusRequest.loading;
    var response = favoriteData.deleteData(favroiteid);
    data.removeWhere((element) => element.favoriteId == favroiteid);
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    getData();
    super.onInit();
  }
}
