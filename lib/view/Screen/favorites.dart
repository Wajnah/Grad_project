import '/controller/myfavouritecontroller.dart';
import '/controller/favouritecontroller.dart';
import '/core/class/handlingdataview.dart';
import '/core/constant/routes.dart';
import '/view/widget/customappbar.dart';
import '/view/widget/myfavorite/customlistfavoritecopons.dart';
import 'package:caotgory/view/Screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  CustomAppBar(
                    mycontroller: controller.search!,
                    titleappbar: "Find coupon",
                    iconData: Icons.arrow_forward,
                    // onPressedIcon: () {},
                    onPressedSearch: () {
                      controller.onSearchItems();
                    },
                    onChanged: (val) {
                      controller.checkSearch(val);
                    },
                    onPressedIconFavorite: () {
                      Get.offAllNamed(AppRoute.profile);
                    },
                  ),
                  const SizedBox(height: 20),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return CustomListFavoriteItems(
                              itemsModel: controller.data[index]);
                        },
                      ))
                ]))),
      ),
    );
  }
}
