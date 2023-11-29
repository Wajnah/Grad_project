import '/core/class/statusrequest.dart';
import '/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(imageAsset.offline, width: 250, height: 250))
        : statusRequest == StatusRequest.serverfailure
            ? Center(
                child: Lottie.asset(imageAsset.server, width: 250, height: 250))
            : statusRequest == StatusRequest.failure
                ? Center(
                    child: Lottie.asset(imageAsset.noData,
                        width: 250, height: 250, repeat: true))
                : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(imageAsset.offline, width: 250, height: 250))
        : statusRequest == StatusRequest.serverfailure
            ? Center(
                child: Lottie.asset(imageAsset.server, width: 250, height: 250))
            : widget;
  }
}
