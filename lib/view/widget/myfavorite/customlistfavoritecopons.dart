import '/controller/favouritecontroller.dart';
import '/controller/coponcontroller.dart';
import '/controller/myfavouritecontroller.dart';
import '/core/constant/color.dart';
import '/core/functions/translatedatabase.dart';
import '/data/model/coponmodel.dart';
import '/data/model/myfavoritesmodel.dart';
import '/linkapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;
  // final bool active;
  const CustomListFavoriteItems({Key? key, required this.itemsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Text(
                      translateDatabase(
                          itemsModel.itemsNameAr, itemsModel.itemsName),
                      style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rating 3.5 ", textAlign: TextAlign.center),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 22,
                        child: Row(
                          children: [
                            ...List.generate(
                                5,
                                (index) => const Icon(
                                      Icons.star,
                                      size: 15,
                                    ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${itemsModel.itemsPrice} \$",
                          style: const TextStyle(
                              color: AppColor.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "sans")),
                      IconButton(
                          onPressed: () {
                            controller
                                .deleteFromFavorite(coponModel.favoriteId!);
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: AppColor.orange,
                          ))
                    ],
                  )
                ]),
          ),
        ));
  }
}
